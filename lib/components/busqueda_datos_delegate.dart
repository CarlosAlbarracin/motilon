import 'package:flutter/material.dart';
import 'package:motilon/menu/models/place.dart';



class BusquedaDatosDelegate extends SearchDelegate<Place> {
  final List<Place> datos;
  

  BusquedaDatosDelegate(this.datos);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        // ignore: null_check_always_fails
        close(context, null!); // Asegúrate de manejar este null correctamente.
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final resultados = datos.where((dato) => dato.city.toLowerCase().contains(query.toLowerCase())).toList();
   

    return ListView.builder(
      itemCount: resultados.length,
      itemBuilder: (context, index) {
        final resultado = resultados[index];
        
        return ListTile(
          title: Text(resultado.city,),
          subtitle: Text(resultado.description),
          
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final sugerencias = datos.where((dato) => dato.city.toLowerCase().startsWith(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: sugerencias.length,
      itemBuilder: (context, index) {
        final sugerencia = sugerencias[index];
        return ListTile(
          title: Text(sugerencia.city),
          onTap: () {
            query = sugerencia.city;
            showResults(context);
          },
        );
      },
    );
  }
}