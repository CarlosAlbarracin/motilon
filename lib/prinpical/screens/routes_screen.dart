import 'dart:async';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motilon/prinpical/models/rutas.dart';
import 'package:motilon/prinpical/screens/error_screen.dart';
import 'package:motilon/prinpical/screens/loading_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


import '../../routes_tour/model.dart';
import '../state/providers/selected_route_provider.dart';

class ScreenVideo extends ConsumerStatefulWidget {
  const ScreenVideo({super.key});

  @override
  ConsumerState<ScreenVideo> createState() => _ScreenVideoState();
}

class _ScreenVideoState extends ConsumerState<ScreenVideo> {

  @override
  Widget build(BuildContext context) {
    Rutas rutas;
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    final name = ModalRoute.of(context)!.settings.arguments as String;
    
    

    return ref.watch(selectedRouteProvider(name)).maybeWhen(
          orElse: () => const ErrorScreen(),
          error: (Object error, StackTrace stackTrace) => const ErrorScreen(),
          loading: () => const LoadingScreen(),
          data: (ruta) {
             String videoId = YoutubePlayer.convertUrlToId(ruta!.videoUrl) ?? '';
            return Scaffold(
              appBar: AppBar(
                title: Column(
                  children: [
                    Text(
                      '',
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      ruta?.titulo ?? '',
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
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         YoutubePlayer(
                                    controller: YoutubePlayerController(
                    initialVideoId: videoId,
                    flags: const YoutubePlayerFlags(
                      autoPlay: true,
                      mute: false,
                    ),
                                    ),
                                    showVideoProgressIndicator: true,
                                  ),
                        const SizedBox(height: 4.0),
                        SizedBox(
                          height: 75,
                          child: Row(
                            children: ruta!.additionalImages.map((image) {
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
                          ruta.descripcion,
                          style: theme.textTheme.bodyMedium,
                          maxLines: 5,
                        ),
                        const SizedBox(height: 8.0),
                      
                      const SizedBox(height: 20),
                        const Text(
                          'Pasos:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: miRuta.pasos.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(miRuta.pasos[index]),
                            );
                          },
                          
                        ),
                           Image.network(
                          ruta.imageUrlR,
                          fit: BoxFit.cover,
                          width: size.width,
                          height: size.height * 0.30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
  }
}
