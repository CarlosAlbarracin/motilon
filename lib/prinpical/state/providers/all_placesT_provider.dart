

import 'package:motilon/prinpical/repositories/places_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:motilon/prinpical/models/places_tourist.dart';

part 'all_placesT_provider.g.dart';

@riverpod
Future<List<PlacesTourist>> allPlacesT(AllPlacesTRef ref) async {
  final placesRepository = ref.watch(placesRepositoryProvider);
  return placesRepository.getPlaces();
}
