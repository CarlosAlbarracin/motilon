import 'package:motilon/prinpical/models/rutas.dart';
import 'package:motilon/prinpical/repositories/routes_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



part 'all_routes_provider.g.dart';

@riverpod
Future<List<Rutas>> allRoutes(AllRoutesRef ref) async {
  final routesRepository = ref.watch(routesRepositoryProvider);
  return routesRepository.getRoutes();
}
