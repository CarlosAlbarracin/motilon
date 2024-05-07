import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:motilon/sites/models/place.dart';
import 'package:motilon/sites/ui/feed/widgets/place_card.dart';

class FavoritePlacesScreen extends StatelessWidget {
  const FavoritePlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Places'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('favorite_places').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Muestra un indicador de carga mientras se cargan los datos
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}'); // Maneja errores de conexión
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Text('No favorite places found'); // Maneja el caso en que no haya lugares favoritos
          }
          // Si hay datos, construye la lista de lugares favoritos
          return ListView(
            children: snapshot.data!.docs.map((doc) {
              // Convierte cada documento en un objeto de tipo TravelPlace
              TravelPlace favoritePlace = TravelPlace.fromFirestore(doc);
              // Muestra la tarjeta del lugar favorito
              return PlaceCard(place: favoritePlace, onPressed: () {  },);
            }).toList(),
          );
        },
      ),
    );
  }
}