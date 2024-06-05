
import 'package:motilon/prinpical/models/places_tourist.dart';


import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repositories/places_repository.dart';

part 'selected_placesT_provider.g.dart';

@riverpod
Future<PlacesTourist?> selectedPlaces(
  SelectedPlacesRef ref,
  String nombre,
) async {
  final placesRepository = ref.watch(placesRepositoryProvider);
  return placesRepository.getPlacesTByTitulo(nombre);
}
