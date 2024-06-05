import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesNotifier extends StateNotifier<Set<String>> {
  FavoritesNotifier() : super({});

  void toggleFavorite(String destinationName) {
    if (state.contains(destinationName)) {
      state = {...state}..remove(destinationName);
    } else {
      state = {...state}..add(destinationName);
    }
  }

  bool isFavorite(String destinationName) {
    return state.contains(destinationName);
  }
}

final favoritesProvider = StateNotifierProvider<FavoritesNotifier, Set<String>>((ref) {
  return FavoritesNotifier();
});
