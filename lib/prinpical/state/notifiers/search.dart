import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motilon/prinpical/models/destination.dart';

// Proveedor de destinos
class DestinationNotifier extends StateNotifier<List<Destination>> {
  DestinationNotifier() : super(Destination.sampleDestinations);

  void searchDestinations(String query) {
    if (query.isEmpty) {
      state = Destination.sampleDestinations;
    } else {
      state = Destination.sampleDestinations
          .where((destination) =>
              destination.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}

// Proveedor global para acceder a DestinationNotifier
final destinationProvider =
    StateNotifierProvider<DestinationNotifier, List<Destination>>(
        (ref) => DestinationNotifier());