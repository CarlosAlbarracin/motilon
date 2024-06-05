import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motilon/prinpical/models/places_tourist.dart';
import 'package:motilon/prinpical/models/rutas.dart';


import '../../views/nabvar.dart';
import '../models/destination.dart';



final allDestinationsProvider = FutureProvider<List<Destination>>((ref) async {
  return Destination.sampleDestinations;
});

final allRoutesProvider = FutureProvider<List<Rutas>>((ref) async {
  return Rutas.rutas;
});

final allPlacesTProvider = FutureProvider<List<PlacesTourist>>((ref) async {
  return PlacesTourist.samplePlacesTourists;
});

final destinationProvider = StateNotifierProvider<DestinationNotifier, List<Destination>>((ref) {
  return DestinationNotifier();
});

class DestinationNotifier extends StateNotifier<List<Destination>> {
  DestinationNotifier() : super(Destination.sampleDestinations);

  void searchDestinations(String query) {
    if (query.isEmpty) {
      state = Destination.sampleDestinations;
    } else {
      state = Destination.sampleDestinations
          .where((destination) => destination.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final destinations = ref.watch(destinationProvider);
    final rutas = ref.watch(allRoutesProvider);
    final placeT = ref.watch(allPlacesTProvider);
    final allDestinationsNotifier = ref.read(destinationProvider.notifier);

    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Menu", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Motilon Viajero',
                textAlign: TextAlign.center,
                style: theme.textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
                  .animate(onPlay: (controller) => controller.repeat())
                  .shimmer(
                    duration: 2400.ms,
                    color: theme.colorScheme.primary,
                  )
                  .animate()
                  .fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad)
                  .slide(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Autocomplete<Destination>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text.isEmpty) {
                      return const Iterable<Destination>.empty();
                    } else {
                      return destinations.where((destination) => destination.name.toLowerCase().contains(textEditingValue.text.toLowerCase()));
                    }
                  },
                  displayStringForOption: (Destination option) => option.name,
                  fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {
                    return TextField(
                      controller: textEditingController,
                      focusNode: focusNode,
                      onChanged: (value) {
                        allDestinationsNotifier.searchDestinations(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Buscar Destinos',
                        border: OutlineInputBorder(),
                      ),
                    );
                  },
                  onSelected: (Destination selection) {
                    Navigator.pushNamed(
                      context,
                      '/destination',
                      arguments: selection.name,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  height: size.height * 0.30,
                  enlargeCenterPage: true,
                ),
                items: destinations.map((destination) {
                  return DestinationCard(destination: destination);
                }).toList(),
              ).animate().fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad),
              const SizedBox(height: 50),
              _sectionTitle(context, 'Principales Municipios'),
              _buildHorizontalList(destinations, (destination) => DestinationCard(destination: destination)),
              _sectionTitle(context, 'Rutas Turisticas'),
              rutas.when(
                data: (rutas) => _buildHorizontalList(rutas, (ruta) => RoutesCard(ruta: ruta)),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),
              _sectionTitle(context, 'Principales lugares Turisticos'),
              placeT.when(
                data: (places) => _buildHorizontalList(places, (place) => PlacesCard(ruta: place)),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildHorizontalList<T>(List<T> items, Widget Function(T) itemBuilder) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: itemBuilder(items[index]),
            ),
          );
        },
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({super.key, required this.destination});

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/destination',
          arguments: destination.name,
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                destination.imageUrl,
                fit: BoxFit.cover,
              ),
            ).animate().shimmer(duration: 1200.ms),
            Align(
              alignment: Alignment.center,
              child: Text(
                destination.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoutesCard extends StatelessWidget {
  const RoutesCard({super.key, required this.ruta});

  final Rutas ruta;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/routes',
          arguments: ruta.titulo,
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                ruta.imageUrlR,
                fit: BoxFit.cover,
              ),
            ).animate().shimmer(duration: 1200.ms),
            Align(
              alignment: Alignment.center,
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlacesCard extends StatelessWidget {
  const PlacesCard({super.key, required this.ruta});

  final PlacesTourist ruta;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/lugares',
          arguments: ruta.nombre,
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                ruta.imageUrl,
                fit: BoxFit.cover,
              ),
            ).animate().shimmer(duration: 1200.ms),
            Align(
              alignment: Alignment.center,
              child: Text(
                ruta.nombre,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}