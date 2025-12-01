/// Archivo: game_state_provider.dart
///
/// Descripción:
/// Motor lógico central del juego de Trivia.
/// Gestiona el ciclo de vida completo de una partida, desde el menú hasta los resultados.
///
/// Funcionalidades Principales:
/// - **Máquina de Estados**: Controla las transiciones entre Menú -> Cargando -> Jugando -> Resultados.
/// - **Generación de Partida**: Selecciona preguntas aleatorias y opciones distractores.
/// - **Control de Tiempo**: Gestiona el temporizador por pregunta.
/// - **Sistema de Puntuación**: Valida respuestas, calcula puntos y rachas en tiempo real.
/// - **Verificación de Logros**: Al finalizar, comprueba y desbloquea logros automáticamente.
///
/// Dependencias:
/// - `pokemonRepositoryProvider`: Para obtener datos de preguntas.
/// - `triviaRepositoryProvider`: Para guardar resultados y logros.
import 'dart:async';
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/trivia_game.dart';
import 'package:pokedex/domain/entities/trivia_question.dart';
import 'package:pokedex/domain/repositories/i_trivia_repository.dart';
import 'package:pokedex/main.dart'; // Para pokemonRepositoryProvider
import 'package:pokedex/presentation/providers/trivia_provider.dart';

enum GameStatus { menu, loading, playing, results }

/// Estado inmutable del juego de Trivia.
/// Contiene toda la información necesaria para renderizar la UI del juego en cualquier momento.
class GameState {
  /// Estado actual del flujo del juego (menú, cargando, jugando, resultados).
  final GameStatus status;

  /// Datos de la partida actual (preguntas, puntaje, etc.). Null si no hay juego activo.
  final TriviaGame? currentGame;

  /// Índice de la pregunta actual en la lista de preguntas (0-9).
  final int currentQuestionIndex;

  /// Tiempo restante en segundos para la pregunta actual.
  final int timeLeft;

  /// Racha actual de respuestas correctas consecutivas.
  final int currentStreak;

  /// Indica si el usuario ya respondió la pregunta actual (para mostrar feedback).
  final bool isAnswered;

  /// Indica si se está realizando una operación asíncrona (ej. cargando preguntas).
  final bool isLoading;

  GameState({
    this.status = GameStatus.menu,
    this.currentGame,
    this.currentQuestionIndex = 0,
    this.timeLeft = 15,
    this.currentStreak = 0,
    this.isAnswered = false,
    this.isLoading = false,
  });

  /// Crea una copia del estado con los campos modificados.
  GameState copyWith({
    GameStatus? status,
    TriviaGame? currentGame,
    int? currentQuestionIndex,
    int? timeLeft,
    int? currentStreak,
    bool? isAnswered,
    bool? isLoading,
  }) {
    return GameState(
      status: status ?? this.status,
      currentGame: currentGame ?? this.currentGame,
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
      timeLeft: timeLeft ?? this.timeLeft,
      currentStreak: currentStreak ?? this.currentStreak,
      isAnswered: isAnswered ?? this.isAnswered,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

/// Notificador de estado que gestiona la lógica del juego de Trivia.
/// Controla el flujo del juego, temporizadores, validación de respuestas y transiciones.
class GameStateNotifier extends StateNotifier<GameState> {
  final Ref ref;
  Timer? _timer;

  GameStateNotifier(this.ref) : super(GameState());

  /// Inicia una nueva partida.
  /// 1. Carga la lista de Pokémon desde el repositorio.
  /// 2. Selecciona aleatoriamente 10 Pokémon para las preguntas.
  /// 3. Genera opciones incorrectas para cada pregunta.
  /// 4. Inicializa el estado del juego y el temporizador.
  Future<void> startGame(String userName) async {
    state = state.copyWith(status: GameStatus.loading, isLoading: true);

    try {
      // Obtener lista de Pokémon para generar preguntas
      final pokemonRepository = ref.read(pokemonRepositoryProvider);

      final allPokemon = await pokemonRepository.getPokemonList(
        limit: 1000,
        offset: 0,
      );

      if (!mounted) return;

      if (allPokemon.isEmpty) {
        state = state.copyWith(status: GameStatus.menu, isLoading: false);
        return;
      }

      final random = Random();
      final List<TriviaQuestion> questions = [];

      // 2. Generar 10 preguntas
      for (int i = 0; i < 10; i++) {
        // Seleccionar Pokémon correcto
        final correctPokemon = allPokemon[random.nextInt(allPokemon.length)];

        // Seleccionar 3 opciones incorrectas
        final Set<String> optionsSet = {_formatName(correctPokemon.name)};
        while (optionsSet.length < 4) {
          final randomPokemon = allPokemon[random.nextInt(allPokemon.length)];
          optionsSet.add(_formatName(randomPokemon.name));
        }

        final options = optionsSet.toList()..shuffle();

        questions.add(
          TriviaQuestion(
            pokemonId: correctPokemon.id,
            pokemonName: _formatName(correctPokemon.name),
            imageUrl: correctPokemon.imageUrl,
            options: options,
          ),
        );
      }

      // 3. Iniciar juego
      final newGame = TriviaGame(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        questions: questions,
        startTime: DateTime.now(),
        userName: userName,
      );

      if (!mounted) return;

      state = GameState(
        status: GameStatus.playing,
        currentGame: newGame,
        currentQuestionIndex: 0,
        timeLeft: 15,
        currentStreak: 0,
        isAnswered: false,
        isLoading: false,
      );

      _startTimer();
    } catch (e) {
      print('Error starting game: $e');
      if (mounted) {
        state = state.copyWith(status: GameStatus.menu, isLoading: false);
      }
    }
  }

  /// Inicia o reinicia el temporizador para la pregunta actual.
  /// Decrementa el tiempo restante cada segundo.
  /// Si el tiempo llega a 0, se envía una respuesta vacía automáticamente.
  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      if (state.timeLeft > 0) {
        state = state.copyWith(timeLeft: state.timeLeft - 1);
      } else {
        // Tiempo agotado
        submitAnswer(''); // Respuesta vacía cuenta como incorrecta
      }
    });
  }

  /// Procesa la respuesta seleccionada por el usuario.
  /// - Detiene el temporizador.
  /// - Valida si la respuesta es correcta.
  /// - Calcula puntos y actualiza la racha.
  /// - Programa la transición a la siguiente pregunta.
  void submitAnswer(String answer) {
    _timer?.cancel();
    if (state.isAnswered) return;

    final game = state.currentGame!;
    final currentQuestion = game.questions[state.currentQuestionIndex];

    // Marcar respuesta
    currentQuestion.answer(answer, state.timeLeft, 15);

    // Actualizar racha
    int newStreak = state.currentStreak;
    if (currentQuestion.isCorrect) {
      newStreak++;
      // Aplicar bonus de racha si corresponde (ej. cada 3 seguidas)
      if (newStreak % 3 == 0) {
        currentQuestion.pointsEarned = (currentQuestion.pointsEarned * 1.5)
            .round();
      }
    } else {
      newStreak = 0;
    }

    state = state.copyWith(isAnswered: true, currentStreak: newStreak);

    // Esperar un momento antes de pasar a la siguiente
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) _nextQuestion();
    });
  }

  /// Avanza a la siguiente pregunta si quedan disponibles.
  /// Si no hay más preguntas, finaliza el juego.
  void _nextQuestion() {
    if (state.currentQuestionIndex < 9) {
      state = state.copyWith(
        currentQuestionIndex: state.currentQuestionIndex + 1,
        timeLeft: 15,
        isAnswered: false,
      );
      _startTimer();
    } else {
      _finishGame();
    }
  }

  /// Finaliza la partida actual.
  /// - Marca el tiempo de fin.
  /// - Guarda el resultado en el repositorio.
  /// - Verifica y desbloquea logros.
  /// - Actualiza el estado a 'results' para mostrar la pantalla final.
  Future<void> _finishGame() async {
    final game = state.currentGame!;
    game.finish();

    // Guardar juego y actualizar logros
    final repository = ref.read(triviaRepositoryProvider);
    await repository.saveGame(game);

    if (!mounted) return;

    // Verificar logros
    await _checkAchievements(game, repository);

    if (!mounted) return;

    state = state.copyWith(status: GameStatus.results);

    // Invalidar providers para recargar datos
    ref.invalidate(topScoresProvider);
    ref.invalidate(achievementsProvider);
    ref.invalidate(statisticsProvider);
  }

  /// Verifica si se cumplieron las condiciones para desbloquear logros
  /// basándose en el rendimiento de la partida finalizada.
  Future<void> _checkAchievements(
    TriviaGame game,
    ITriviaRepository repository,
  ) async {
    // Lógica simple de verificación de logros
    if (game.totalScore >= 500) await repository.unlockAchievement('trainer');
    if (game.totalScore >= 1000) await repository.unlockAchievement('master');
    if (game.totalScore >= 1500) await repository.unlockAchievement('champion');

    if (game.accuracy == 100) await repository.unlockAchievement('perfect');

    final duration = game.endTime!.difference(game.startTime).inSeconds;
    if (duration < 120) await repository.unlockAchievement('speedster');

    // Novato (siempre se desbloquea al terminar una partida)
    await repository.unlockAchievement('novice');
  }

  /// Formatea el nombre del Pokémon para mostrarlo limpio en la UI.
  /// Convierte "kebab-case" a "Title Case".
  /// Ejemplo: "flutter-mane" -> "Flutter Mane"
  String _formatName(String name) {
    if (name.isEmpty) return name;

    return name
        .split('-')
        .map((word) {
          if (word.isEmpty) return '';
          return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
        })
        .join(' ');
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

final gameStateProvider = StateNotifierProvider<GameStateNotifier, GameState>((
  ref,
) {
  return GameStateNotifier(ref);
});
