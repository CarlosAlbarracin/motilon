
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:motilon/sites/models/place.dart';

class PlaceCommentsWidget extends StatefulWidget {
  const PlaceCommentsWidget({super.key});

  @override
  State<PlaceCommentsWidget> createState() => _PlaceCommentsWidgetState();
}

class _PlaceCommentsWidgetState extends State<PlaceCommentsWidget> {
  late TravelPlace places;
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  void initState() {
  super.initState();
  // Inicialmente puedes asignar un lugar predeterminado o nulo
  places = TravelPlace.place[0];
}

// Método para actualizar el lugar cuando se selecciona una tarjeta
void updatePlace(TravelPlace selectedPlace) {
  setState(() {
    places = selectedPlace;
  });
}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0),
            Colors.white,
          ],
        ),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 400,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        myLocationButtonEnabled: false,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(places.latLng.latitude, places.latLng.longitude),
                          zoom: 10,
                        ),
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                      ),
                    ),
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blueGrey.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.zero,
            ),
            child: Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}