import 'package:flutter/material.dart';

import 'package:motilon/routes_tour/model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenVideo extends StatefulWidget {
  const ScreenVideo({
    Key? key,
  }) : super(key: key);

  @override
  State<ScreenVideo> createState() => _ScreenVideoState();
}

class _ScreenVideoState extends State<ScreenVideo> {
  @override
  Widget build(BuildContext context) {
    
    String videoId = YoutubePlayer.convertUrlToId(miRuta.videoUrl) ?? '';
    return MaterialApp(
      title: 'Rutas Turísticas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rutas Turísticas'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: videoId,
                  flags: const YoutubePlayerFlags(
                    autoPlay: true,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              miRuta.titulo,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          miRuta.descripcion,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
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
                      const SizedBox(height: 20),
                      // Agregar imagen aquí
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 1, // Ajusta el valor según tu necesidad
                        child: Image.asset('assets/RUTADURAZNOAGUA.jpg'),
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
  }
}