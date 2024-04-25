import '../../models/place.dart';

class FavoritePlacesManager {
  List<int> favoritePlacesIndices = [];
  

  void toggleFavorite(int index) {
      print('Toggle favorite called with index: $index');
    if (favoritePlacesIndices.contains(index)) {
      favoritePlacesIndices.remove(index);
    } else {
      favoritePlacesIndices.add(index);
    }
  }

  List<int> getFavoritePlacesIndices() {
    return favoritePlacesIndices;
  }
  
  List<Place> getFavoritePlaces(List<Place> allPlaces) {
    return favoritePlacesIndices.map((index) => allPlaces[index]).toList();
  }
}