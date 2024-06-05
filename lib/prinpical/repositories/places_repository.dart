
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:motilon/prinpical/models/places_tourist.dart';

part 'places_repository.g.dart';

@riverpod
PlacesRepository placesRepository(PlacesRepositoryRef ref) =>
    PlacesRepository();

class PlacesRepository {
  Future<List<PlacesTourist>> getPlaces() async {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => PlacesTourist.samplePlacesTourists,
    );
  }

  Future<PlacesTourist?> getPlacesTByTitulo(String Titulo) async {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => PlacesTourist.samplePlacesTourists
          .firstWhere((samplePlacesTourists) => samplePlacesTourists.nombre == Titulo),
    );
  }
}