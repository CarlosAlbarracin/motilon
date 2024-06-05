import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:motilon/sites/models/place.dart';
import 'package:motilon/sites/ui/feed/widgets/place_card.dart';
// Asegúrate de importar tu widget de tarjeta de lugar


class FavoritePlacesScreen extends StatelessWidget {
  const FavoritePlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Places'),
      ),
      body: _buildFavoritePlacesList(),
    );
  }

  Widget _buildFavoritePlacesList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('favorite_places').where('isFavorite', isEqualTo: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text('No favorite places yet.'),
          );
        }

        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            var placeDocumentSnapshot = snapshot.data!.docs[index];
            var place = TravelPlace.fromFirestore(placeDocumentSnapshot); // Crear instancia de TravelPlace a partir de DocumentSnapshot

            return PlaceCard(
              place: place,
              onPressed: () {
                // Acción al hacer clic en el lugar favorito
                // Puedes implementar la lógica que desees aquí
              },
            );
          },
        );
      },
    );
  }
}
