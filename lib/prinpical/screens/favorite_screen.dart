import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motilon/prinpical/state/notifiers/favoritePlaces.dart';


class FavoritesScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Destinos Favoritos'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final favoriteName = favorites.elementAt(index);
          // Aquí puedes obtener el destino favorito de tu proveedor de destinos por su nombre o de cualquier otra manera
          return ListTile(
            title: Text(favoriteName),
            // Aquí puedes navegar a la pantalla de detalles del destino, pasando el nombre del destino como argumento
            onTap: () {
              Navigator.pushNamed(
                context,
                '/destination',
                arguments: favoriteName,
              );
            },
          );
        },
      ),
    );
  }
}