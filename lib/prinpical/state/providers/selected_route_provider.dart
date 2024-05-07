import 'package:motilon/prinpical/repositories/routes_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


import 'package:motilon/prinpical/models/rutas.dart';
part 'selected_route_provider.g.dart';

@riverpod
Future<Rutas?> selectedRoute(
  SelectedRouteRef ref,
  String titulo,
) async {
  final routeRepository = ref.watch(routesRepositoryProvider);
  return routeRepository.getRoutesByTitulo(titulo);
}