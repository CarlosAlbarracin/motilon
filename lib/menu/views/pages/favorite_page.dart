import 'package:flutter/material.dart';
import 'package:motilon/menu/models/place.dart';
import 'package:motilon/menu/views/pages/favorite_class.dart';

class FavoritePlacesScreen extends StatelessWidget {
  final FavoritePlacesManager favoritePlacesManager;
  final List<Place> places;

  const FavoritePlacesScreen({
    Key? key,
    required this.favoritePlacesManager,
    required this.places,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Place> favoritePlaces = favoritePlacesManager.getFavoritePlaces(places);
    print(favoritePlacesManager.favoritePlacesIndices);

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Places'),
      ),
      body: favoritePlaces.isEmpty
          ? Center(
              child: Text('No favorite places yet!'),
            )
          : ListView.builder(
              itemCount: favoritePlaces.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favoritePlaces[index].city),
                  // You can add more details like image, description, etc.
                );
              },
            ),
    );
  }
}