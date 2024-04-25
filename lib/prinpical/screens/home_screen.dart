import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../views/nabvar.dart';
import '../models/destination.dart';
import '../state/providers/all_destinations_provider.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final destinations = ref.watch(allDestinationsProvider);

    return Scaffold(
       drawer: const NavBar( 
        
        
      ),
      appBar: AppBar(
        
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Menu", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        
        
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Text(
              '',
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
            
            CarouselSlider(
              options: CarouselOptions(
                height: size.height * 0.30,
                enlargeCenterPage: true,
              ),
              items: destinations.when(
                data: (destinations) {
                  return destinations.map(
                    (destination) {
                      return DestinationCard(
                        destination: destination,
                      );
                    },
                  ).toList();
                },
                loading: () => [
                  const Center(child: CircularProgressIndicator()),
                ],
                error: (err, stack) => [Text('Error: $err')],
              ),
            ).animate().fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad),
             SizedBox(
  height: 200, // Altura deseada del ListView horizontal
  child: ListView(
    
    scrollDirection: Axis.horizontal,
    children: destinations.when(
      data: (destinations) {
        return destinations.map(
          (destination) {
            return SizedBox(
              width: 400, // Ancho deseado de cada tarjeta
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DestinationCard(
                  destination: destination,
                ),
              ),
            );
          },
        ).toList();
      },
      loading: () => [
        Center(child: CircularProgressIndicator()),
      ],
      error: (err, stack) => [Text('Error: $err')],
    ),
    
  ),
  
),
          ],
        ),
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
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
