import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motilon/prinpical/state/providers/selected_placesT_provider.dart';

import '../state/providers/selected_destination_provider.dart';
import 'error_screen.dart';
import 'loading_screen.dart';

class PlacesTScreen extends ConsumerStatefulWidget {
  const PlacesTScreen({super.key});

  @override
  ConsumerState<PlacesTScreen> createState() => _PlacesTScreenState();
}

class _PlacesTScreenState extends ConsumerState<PlacesTScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    final name = ModalRoute.of(context)!.settings.arguments as String;

    return ref.watch(selectedPlacesProvider(name)).maybeWhen(
          orElse: () => const ErrorScreen(),
          error: (Object error, StackTrace stackTrace) => const ErrorScreen(),
          loading: () => const LoadingScreen(),
          data: (destination) {
            return Scaffold(
              appBar: AppBar(
                title: Column(
                  children: [
                    Text(
                      'Lugares Turisticos',
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      destination?.nombre ?? '',
                      style: theme.textTheme.headlineSmall,
                    ),
                  ],
                ),
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
                        destination?.imageUrl ?? '',
                        fit: BoxFit.cover,
                        width: size.width,
                        height: size.height * 0.30,
                      ),
                      const SizedBox(height: 4.0),
                      SizedBox(
                        height: 75,
                        child: Row(
                          children: destination!.additionalImages.map((image) {
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
                            target: destination.latLng,
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
                            arguments: destination.nombre,
                          );
                        },
                        child: const Text('Lugares de Atraccion'),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
  }
}
