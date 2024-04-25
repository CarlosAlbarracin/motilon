import 'package:flutter/material.dart';
import 'package:motilon/components/busqueda_datos_delegate.dart';

import 'package:motilon/menu/models/place.dart';
import 'package:motilon/menu/theme.dart';
import 'package:motilon/menu/views/pages/favorite_class.dart';
import 'package:motilon/menu/views/widgets/card.dart';
import 'package:motilon/menu/views/widgets/event.dart';
import 'package:motilon/menu/views/widgets/place_card.dart';
import 'package:motilon/routes_tour/screen_routes.dart';
import 'package:motilon/views/nabvar.dart';



class HomePage extends StatefulWidget {
  
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  
  FavoritePlacesManager favoritePlacesManager = FavoritePlacesManager();
   
  void toggleFavorite(int index) {
    setState(() {
      favoritePlacesManager.toggleFavorite(index);
      places[index].toggleFavorite();
    });
  }
    void toggleFavorit(int index) {
    setState(() {
      
      gastronomy[index].toggleFavorite();
    });
  }
void navigateToRoute(BuildContext context, int index) {
    // Aquí puedes implementar la lógica para determinar la ruta correspondiente según el índice seleccionado
    // Por ejemplo, puedes usar una condición o un switch para decidir la ruta

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenVideo(),
        ),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenVideo(),
        ),
      );
    } else {
      // Ruta por defecto si no se cumple ninguna condición
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenVideo(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
     // Ejemplo: función para obtener los lugares desde algún origen de datos

  print('Longitud de la lista places: ${places.length}'); // Imprimir la longitud de la lista places
    List<String> titles = [
      'All',
      'Ocaña',
      'Patios',
      'Cacota',
      'Pamplona',
      'Pamplona'
    ];
    return Scaffold(
      drawer: const NavBar( 
        
        
      ),
      appBar: AppBar(
        
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Menu", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        
        
      ),
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/user.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hola Carlos,',
                          style: textStyle2,
                        ),
                       
                      ],
                    ),
                  ],
                ),
                
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: BusquedaDatosDelegate(places),
              );
            },
          ),
        
              ],
            ),
          ),
         
          Container(
            margin: const EdgeInsets.only(top: 25, left: 30),
            child: Text(
              "Disfruta de Norte de Santander ",
              style: textStyle1,
            ),
          ),
          Container(
              height: 30,
              margin: const EdgeInsets.only(top: 25, left: 30),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titles.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Text(
                            titles[index],
                            style: textStyle4.copyWith(
                                color: (index == 0) ? mainCOlor : white),
                          ),
                          (index == 0)
                              ? Container(
                                  width: 20,
                                  height: 2,
                                  decoration: BoxDecoration(
                                      color: mainCOlor,
                                      borderRadius:
                                          const BorderRadius.all(Radius.circular(4))),
                                )
                              : const SizedBox()
                        ],
                      ),
                    );
                  })),
          Container(
            margin: const EdgeInsets.only(top: 36, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sitios Populares",
                  style: textStyle2,
                ),
                Text(
                  "Ver todos",
                  style: textStyle4,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, top: 20),
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: PlaceCard(
                      place:places[index],
                      index: index, 
                      onPressed: () { toggleFavorite(index); },
                    ),
                  );
                }),
          ),
          
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Wrap(
              
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              
              children: [
                Text(
                  'Destinos para los amantes de la gastronomia',
                  style: textStyle2,
                ),
                Text(
                  'See All',
                  style: textStyle4,
                )
              ],
            ),
          ),
          Container(
            height: 210,
            width: 230,
            margin: const EdgeInsets.only(top: 40, right: 30, left: 30),
            child: ListView.builder(
                itemCount: gastronomy.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                     child: CardM(
                      place: gastronomy[index],
                      index: index, onPressed: () { toggleFavorit(index); },
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 50,
          ),
        Container(
  margin: const EdgeInsets.only(left: 30, right: 30, top: 40),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Planes turisticos',
        style: textStyle2,
      ),
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenVideo(),
            ),
          );
        },
        child: Text(
          'See All',
          style: textStyle4,
        ),
      ),
    ],
  ),
),
Container(
  height: 210,
  width: 230,
  margin: const EdgeInsets.only(top: 40, right: 30, left: 30),
  child: ListView.builder(
    itemCount: events.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (_, index) {
      return Padding(
        padding: const EdgeInsets.only(right: 20),
        child: GestureDetector(
                    onTap: () => navigateToRoute(context, index),
                    child: Event(
                      place: events[index],
                      index: index, onPressed: () { toggleFavorite(index); },
                    ),
                  ),
      );
    },
  ),
),
          const SizedBox(
            height: 100,
          ),
          const Text("Qute te parece si agregamos\nuna nueva ciudad",textAlign: TextAlign.start,),
        ],
      ),
    );
  }
  
}
