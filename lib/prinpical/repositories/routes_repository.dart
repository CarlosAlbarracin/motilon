import 'package:motilon/prinpical/models/rutas.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes_repository.g.dart';

@riverpod
RoutesRepository routesRepository(RoutesRepositoryRef ref) =>
    RoutesRepository();

class RoutesRepository {
  Future<List<Rutas>> getRoutes() async {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => Rutas.rutas,
    );
  }

  Future<Rutas?> getRoutesByTitulo(String Titulo) async {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => Rutas.rutas
          .firstWhere((destination) => destination.titulo == Titulo),
    );
  }
}