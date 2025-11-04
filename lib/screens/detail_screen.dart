import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/graphql/PokemonDetail.graphql.dart';
import 'package:pokedex/widgets/type_badge.dart';
import 'package:pokedex/widgets/type_gradients.dart';
import 'package:pokedex/widgets/start_bar.dart';
import 'package:pokedex/widgets/animated_detail_screen.dart';

String _imageById(int id) =>
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

class PokemonDetailScreen extends StatefulWidget {
  final int id;
  const PokemonDetailScreen({super.key, required this.id});

  @override
  State<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: documentNodeQueryPokemonDetailV2,
        variables: {'id': widget.id},
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.data == null) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (result.hasException) {
          return Scaffold(
            body: Center(child: Text('Error: ${result.exception}')),
          );
        }

        final p =
            result.data?['pokemon_v2_pokemon_by_pk'] as Map<String, dynamic>?;
        if (p == null) {
          return const Scaffold(body: Center(child: Text('No encontrado')));
        }

        final name = p['name'] as String;
        final height = p['height'] as int;
        final weight = p['weight'] as int;
        final types = (p['pokemon_v2_pokemontypes'] as List)
            .map((e) => e['pokemon_v2_type']['name'] as String)
            .toList();
        final primaryType = types.isNotEmpty ? types.first : 'normal';
        final gradient = typeGradients[primaryType] ?? typeGradients['normal']!;

        final stats = (p['pokemon_v2_pokemonstats'] as List)
            .map(
              (s) => {
                'name': (s['pokemon_v2_stat'] as Map)['name'] as String,
                'value': s['base_stat'] as int,
              },
            )
            .toList();

        final abilities = (p['pokemon_v2_pokemonabilities'] as List)
            .map((a) => a['pokemon_v2_ability']['name'] as String)
            .toList();

        return AnimatedDetailScreen(
          child: Scaffold(
            body: Column(
              children: [
                // Header section with gradient background
                Container(
                  decoration: BoxDecoration(gradient: gradient),
                  child: SafeArea(
                    bottom: false,
                    child: Column(
                      children: [
                        // App bar
                        StaggeredAnimationItem(
                          index: 0,
                          animationType: AnimationType.slideDown,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InteractiveButton(
                                  onTap: () => Navigator.of(context).pop(),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                                InteractiveButton(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      // Pokemon info
                      StaggeredAnimationItem(
                        index: 1,
                        animationType: AnimationType.slideLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name[0].toUpperCase() + name.substring(1),
                                      style: const TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Wrap(
                                      spacing: 8,
                                      children: types
                                          .map(
                                            (type) => TypeBadge(
                                              type: type,
                                              backgroundColor:
                                                  gradient.colors.first,
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '#${widget.id.toString().padLeft(3, '0')}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Pokemon image (tamaño ligeramente reducido)
                      AnimatedPokemonImage(
                        child: SizedBox(
                          height: 240,
                          child: Image.network(
                            _imageById(widget.id),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),

              // Content section with tabs
              Expanded(
                child: StaggeredAnimationItem(
                  index: 2,
                  animationType: AnimationType.slideUp,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        // Tab bar
                        StaggeredAnimationItem(
                          index: 3,
                          animationType: AnimationType.slideUp,
                          child: Container(
                            margin: const EdgeInsets.only(top: 16),
                            child: TabBar(
                              controller: _tabController,
                              labelColor: gradient.colors.first,
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: gradient.colors.first,
                              indicatorWeight: 3,
                              tabs: const [
                                Tab(text: 'About'),
                                Tab(text: 'Base Stats'),
                                Tab(text: 'Evolution'),
                                Tab(text: 'Moves'),
                              ],
                            ),
                          ),
                        ),

                        // Tab content
                        Expanded(
                          child: StaggeredAnimationItem(
                            index: 4,
                            animationType: AnimationType.slideUp,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                _buildAboutTab(height, weight, abilities, name),
                                _buildBaseStatsTab(stats, gradient.colors.first),
                                _buildEvolutionTab(),
                                _buildMovesTab(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
            ),
          ),
        );
        },
    );
  }

  Widget _buildAboutTab(
    int height,
    int weight,
    List<String> abilities,
    String name,
  ) {
    // Evita overflow: hace scroll si el contenido supera el alto disponible
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pokedex Entry
          _buildInfoRow('Pokedex Entry', _getPokedexEntry(name)),
          const SizedBox(height: 16),
          _buildInfoRow('Species', 'Seed'),
          const SizedBox(height: 16),
          _buildInfoRow(
            'Height',
            '${(height / 10).toStringAsFixed(1)} m (${(height * 3.937 / 10).toStringAsFixed(1)} ft)',
          ),
          const SizedBox(height: 16),
          _buildInfoRow(
            'Weight',
            '${(weight / 10).toStringAsFixed(1)} kg (${(weight * 2.205 / 10).toStringAsFixed(1)} lbs)',
          ),
          const SizedBox(height: 16),
          _buildInfoRow(
            'Abilities',
            abilities
                .map((a) => a[0].toUpperCase() + a.substring(1))
                .join(', '),
          ),
          const SizedBox(height: 32),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Breeding',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 16),
          _buildInfoRow('Gender', '♂ 87.5%    ♀ 12.5%'),
          const SizedBox(height: 16),
          _buildInfoRow('Egg Groups', 'Monster'),
          const SizedBox(height: 16),
          _buildInfoRow('Egg Cycle', 'Grass'),
        ],
      ),
    );
  }

  Widget _buildBaseStatsTab(
    List<Map<String, dynamic>> stats,
    Color primaryColor,
  ) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: stats.asMap().entries.map((entry) {
          final index = entry.key;
          final stat = entry.value;
          final name = (stat['name'] as String);
          final value = stat['value'] as int;
          return StaggeredAnimationItem(
            index: index,
            animationType: AnimationType.slideLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: InteractiveButton(
                onTap: () {
                  // Micro-interaction for stat bars
                },
                child: StatBar(label: name, value: value),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildEvolutionTab() {
    return const Center(
      child: Text(
        'Evolution chain coming soon...',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }

  Widget _buildMovesTab() {
    return const Center(
      child: Text(
        'Moves list coming soon...',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return InteractiveButton(
      onTap: () {
        // Micro-interaction for info rows
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Text(
                value,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getPokedexEntry(String name) {
    // Generar una descripción basada en el nombre del Pokémon
    final descriptions = {
      'bulbasaur':
          'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.',
      'ivysaur':
          'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.',
      'venusaur':
          'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.',
      'charmander':
          'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.',
      'charmeleon':
          'When it swings its burning tail, it elevates the temperature to unbearably hot levels.',
      'charizard':
          'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.',
      'squirtle':
          'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.',
      'wartortle':
          'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.',
      'blastoise':
          'A brutal Pokémon with pressurized water jets on its shell. They are used for high speed tackles.',
      'caterpie':
          'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.',
      'metapod':
          'This Pokémon is vulnerable to attack while its shell is soft, exposing its weak and tender body.',
      'butterfree':
          'In battle, it flaps its wings at high speed to release highly toxic dust into the air.',
      'weedle':
          'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.',
      'kakuna':
          'Almost incapable of moving, this Pokémon can only harden its shell to protect itself from predators.',
      'beedrill':
          'Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.',
      'pidgey':
          'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.',
      'pidgeotto':
          'Very protective of its sprawling territorial area, this Pokémon will fiercely peck at any intruder.',
      'pidgeot':
          'When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.',
      'rattata':
          'Bites anything when it attacks. Small and very quick, it is a common sight in many places.',
      'raticate':
          'It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.',
      'spearow':
          'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.',
      'fearow':
          'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.',
      'ekans':
          'Moves silently and stealthily. Eats the eggs of birds, such as Pidgey and Spearow, whole.',
      'arbok':
          'It is rumored that the ferocious warning markings on its belly differ from area to area.',
      'pikachu':
          'When several of these Pokémon gather, their electricity could build and cause lightning storms.',
      'raichu':
          'Its long tail serves as a ground to protect itself from its own high voltage power.',
      'sandshrew':
          'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.',
      'sandslash':
          'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.',
      'nidoran-f':
          'Although small, its venomous barbs render this Pokémon dangerous. The female has smaller horns.',
      'nidorina':
          'The female\'s horn develops slowly. Prefers physical attacks such as clawing and biting.',
      'nidoqueen':
          'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.',
      'nidoran-m':
          'Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.',
      'nidorino':
          'An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful venom.',
      'nidoking':
          'It uses its powerful tail in battle to smash, constrict, then break the prey\'s bones.',
      'clefairy':
          'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.',
      'clefable':
          'A timid fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.',
      'vulpix':
          'At the time of birth, it has just one tail. The tail splits from its tip as it grows older.',
      'ninetales':
          'Very smart and vengeful. Grabbing one of its many tails could result in a 1000-year curse.',
      'jigglypuff':
          'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.',
      'wigglytuff':
          'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.',
      'zubat':
          'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.',
      'golbat':
          'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.',
      'oddish':
          'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.',
      'gloom':
          'The fluid that oozes from its mouth isn\'t drool. It is a nectar that is used to attract prey.',
      'vileplume':
          'The larger its petals, the more toxic pollen it contains. It has the largest petals in the world.',
      'paras':
          'Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.',
      'parasect':
          'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.',
      'venonat':
          'Lives in the shadows of tall trees where it eats insects. It is attracted to light at night.',
      'venomoth':
          'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.',
      'diglett':
          'Lives about one yard underground where it feeds on plant roots. It also appears above ground.',
      'dugtrio':
          'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.',
      'meowth':
          'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.',
      'persian':
          'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.',
      'psyduck':
          'While lulling its enemies with its vacant look, this wily Pokémon will use psychokinetic powers.',
      'golduck':
          'Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.',
      'mankey':
          'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.',
      'primeape':
          'Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.',
      'growlithe':
          'Very protective of its territory. It will bark and bite to repel intruders from its space.',
      'arcanine':
          'A Pokémon that has been admired since the past for its beauty. It runs agilely as if on wings.',
      'poliwag':
          'Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.',
      'poliwhirl':
          'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.',
      'poliwrath':
          'An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.',
      'abra':
          'Using its ability to read minds, it will identify impending danger and teleport to safety.',
      'kadabra':
          'It emits special alpha waves from its body that induce headaches just by being close by.',
      'alakazam':
          'Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.',
      'machop':
          'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.',
      'machoke':
          'Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.',
      'machamp':
          'Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.',
      'bellsprout':
          'A carnivorous Pokémon that traps and eats bugs. It uses its root feet to soak up needed moisture.',
      'weepinbell':
          'It spits out poisonpowder to immobilize the enemy and then finishes it with a spray of acid.',
      'victreebel':
          'Said to live in huge colonies deep in jungles, although no one has ever returned from there.',
      'tentacool':
          'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.',
      'tentacruel':
          'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.',
      'geodude':
          'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.',
      'graveler':
          'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.',
      'golem':
          'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.',
      'ponyta':
          'Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.',
      'rapidash':
          'Very competitive, this Pokémon will chase anything that moves fast in the hopes of racing it.',
      'slowpoke':
          'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.',
      'slowbro':
          'The Shellder that is latched onto Slowpoke\'s tail is said to feed on the host\'s left over scraps.',
      'magnemite':
          'Uses anti-gravity to stay suspended. Appears without warning and uses Thunder Wave and similar moves.',
      'magneton':
          'Formed by several Magnemite linking together. They frequently appear when sunspots flare up.',
      'farfetchd':
          'The sprig of green onions it holds is its weapon. It is used much like a metal sword.',
      'doduo':
          'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.',
      'dodrio':
          'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.',
      'seel':
          'The protruding horn on its head is very hard. It is used for bashing through thick ice.',
      'dewgong':
          'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.',
      'grimer':
          'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.',
      'muk':
          'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.',
      'shellder':
          'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.',
      'cloyster':
          'When attacked, it launches its horns in quick volleys. Its innards have never been seen.',
      'gastly':
          'Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.',
      'haunter':
          'Because of its ability to slip through block walls, it is said to be from another dimension.',
      'gengar':
          'Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.',
      'onix':
          'As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.',
      'drowzee':
          'Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.',
      'hypno':
          'When it locks eyes with an enemy, it will use a mix of psi powers such as Hypnosis and Confusion.',
      'krabby':
          'Its pincers are not only powerful, they are also very dexterous. It can catch prey or fight with them.',
      'kingler':
          'The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.',
      'voltorb':
          'Usually found in power plants. Easily mistaken for a Poké Ball, they have zapped many people.',
      'electrode':
          'It stores electric energy under very high pressure. It often explodes with little or no provocation.',
      'exeggcute':
          'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.',
      'exeggutor':
          'Legend has it that on rare occasions, one of its heads will drop off and continue living as an Exeggcute.',
      'cubone':
          'Because it never removes its skull helmet, no one has ever seen this Pokémon\'s real face.',
      'marowak':
          'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.',
      'hitmonlee':
          'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.',
      'hitmonchan':
          'While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.',
      'lickitung':
          'Its tongue can be extended like a chameleon\'s. It leaves a tingling sensation when it licks enemies.',
      'koffing':
          'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.',
      'weezing':
          'Where two kinds of poison gases meet, 2 Koffings can fuse into a Weezing over many years.',
      'rhyhorn':
          'Its massive bones are 1000 times harder than human bones. It can easily knock a trailer truck flying.',
      'rhydon':
          'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.',
      'chansey':
          'A rare and elusive Pokémon that is said to bring happiness to those who manage to get it.',
      'tangela':
          'The whole body is swathed with wide vines that are similar to seaweed. Its vines shake as it walks.',
      'kangaskhan':
          'The infant rarely ventures out of its mother\'s protective pouch until it is 3 years old.',
      'horsea':
          'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.',
      'seadra':
          'Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.',
      'goldeen':
          'Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.',
      'seaking':
          'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.',
      'staryu':
          'An enigmatic Pokémon that can effortlessly regenerate any appendage it loses in battle.',
      'starmie':
          'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.',
      'mr-mime':
          'If interrupted while it is miming, it will slap around the offender with its broad hands.',
      'scyther':
          'With ninja-like agility and speed, it can create the illusion that there is more than one.',
      'jynx':
          'It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.',
      'electabuzz':
          'Normally found near power plants, they can wander away and cause major blackouts in cities.',
      'magmar':
          'Its body always burns with an orange glow that enables it to hide perfectly among flames.',
      'pinsir':
          'If it fails to crush the victim in its pincers, it will swing it around and toss it hard.',
      'tauros':
          'When it targets an enemy, it charges furiously while whipping its body with its long tails.',
      'magikarp':
          'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.',
      'gyarados':
          'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.',
      'lapras':
          'A Pokémon that has been overhunted almost to extinction. It can ferry people across bodies of water.',
      'ditto':
          'Capable of copying an enemy\'s genetic code to instantly transform itself into a duplicate of the enemy.',
      'eevee':
          'Its genetic code is irregular. It may mutate if it is exposed to radiation from element stones.',
      'vaporeon':
          'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid\'s.',
      'jolteon':
          'It accumulates negative ions in the atmosphere to blast out 10000-volt lightning bolts.',
      'flareon':
          'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.',
      'porygon':
          'A Pokémon that consists entirely of programming code. Capable of moving freely in cyberspace.',
      'omanyte':
          'Although long extinct, in rare cases, it can be genetically resurrected from fossils.',
      'omastar':
          'A prehistoric Pokémon that died out when its heavy shell made it impossible to catch prey.',
      'kabuto':
          'A Pokémon that was resurrected from a fossil found in what was once the ocean floor eons ago.',
      'kabutops':
          'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.',
      'aerodactyl':
          'A ferocious, prehistoric Pokémon that goes for the enemy\'s throat with its serrated saw-like fangs.',
      'snorlax':
          'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.',
      'articuno':
          'A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.',
      'zapdos':
          'A legendary bird Pokémon that is said to appear from clouds while dropping enormous lightning bolts.',
      'moltres':
          'Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.',
      'dratini':
          'Long considered a mythical Pokémon until recently when a small colony was found living underwater.',
      'dragonair':
          'A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.',
      'dragonite':
          'An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.',
      'mewtwo':
          'It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.',
      'mew':
          'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.',
    };

    return descriptions[name.toLowerCase()] ??
        'This mysterious Pokémon has unique characteristics that make it special among its kind.';
  }
}
