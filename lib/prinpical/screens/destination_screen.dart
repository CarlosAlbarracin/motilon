import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motilon/prinpical/models/destination.dart';
import 'package:motilon/prinpical/state/notifiers/favoritePlaces.dart';

import '../state/providers/selected_destination_provider.dart';
import 'error_screen.dart';
import 'loading_screen.dart';

class DestinationCard extends ConsumerWidget {
  const DestinationCard({super.key, required this.destination});

  final Destination destination;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(favoritesProvider).contains(destination.name);

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
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {
                  ref.read(favoritesProvider.notifier).toggleFavorite(destination.name);
                },
              ),
            ),
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

class DestinationScreen extends ConsumerStatefulWidget {
  const DestinationScreen({super.key});

  @override
  ConsumerState<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends ConsumerState<DestinationScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    final name = ModalRoute.of(context)!.settings.arguments as String;

    return ref.watch(selectedDestinationProvider(name)).maybeWhen(
          orElse: () => const ErrorScreen(),
          error: (Object error, StackTrace stackTrace) => const ErrorScreen(),
          loading: () => const LoadingScreen(),
          data: (destination) {
            final isFavorite = ref.watch(favoritesProvider).contains(destination?.name);
            return Scaffold(
              appBar: AppBar(
                title: Column(
                  children: [
                    Text(
                      'Destination',
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      destination!.name,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      ref.read(favoritesProvider.notifier).toggleFavorite(destination.name);
                    },
                  ),
                ],
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        destination.imageUrl,
                        fit: BoxFit.cover,
                        width: size.width,
                        height: size.height * 0.30,
                      ),
                      const SizedBox(height: 4.0),
                      SizedBox(
                        height: 75,
                        child: Row(
                          children: destination.additionalImages.map((image) {
                            return Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 2.0,
                                  right: 2.0,
                                ),
                                child: Image.network(image, fit: BoxFit.cover),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        destination.description,
                        style: theme.textTheme.bodyMedium,
                        maxLines: 5,
                      ),
                      const SizedBox(height: 8.0),
                      Expanded(
                        child: GoogleMap(
                          mapType: MapType.normal,
                          myLocationButtonEnabled: false,
                          initialCameraPosition: CameraPosition(
                            target: destination!.latLng,
                            zoom: 10,
                          ),
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          minimumSize: const Size.fromHeight(48.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/points-of-interest',
                            arguments: destination.name,
                          );
                        },
                        child: const Text('Encontrar atracciones'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
  }
}