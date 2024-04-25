import 'package:flutter/material.dart';

import 'package:motilon/mapa/animated_market_map.dart';
import 'package:motilon/prinpical/main.dart';
import 'package:motilon/prinpical/screens/home_screen.dart';

//import 'package:motilon/agencia/agencia/explore.dart';


//import 'package:motilon/map/animated_market_map.dart';
import 'package:motilon/profile/profile.dart';
import 'package:motilon/restaurants/view/home.dart';
import 'package:motilon/sites/travel_app.dart';

import '../menu/models/place.dart';
import '../menu/views/pages/favorite_class.dart';
import '../menu/views/pages/favorite_page.dart';

//import 'package:motilon/restaurants/view/home.dart';
//import 'package:motilon/sites/travel_app.dart';

class NavBar extends StatelessWidget {
  
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoritePlacesManager favoritePlacesManager = FavoritePlacesManager();
       UserData userData = UserData(
      name: 'Carlos Albarracin',
      email: 'albarracincarlos58@gmail.com',
      password: 'password123',
      profileImage: 'https://example.com/profile_image.jpg',
    );
    return Drawer(
      
      child: ListView(
        
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Carlos Albarracin '),
            accountEmail: const Text('albarracincarlos58@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
         ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Mapa'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimateMarketMap(),
                      ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_size_select_actual_outlined),
            title: const Text('Municipios'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TravelApp(),
                      ));
            },
          ),
         /*ListTile(
            leading: const Icon(Icons.holiday_village),
            title: const Text('Agencia'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Agencia(),
                      ));
            },
          ),*/
           ListTile(
            leading: const Icon(Icons.public),
            title: const Text('Favoritos'),
            onTap: (){
               Navigator.of(context).push(   MaterialPageRoute(
     builder: (context) => FavoritePlacesScreen(
  favoritePlacesManager: favoritePlacesManager,
  places: places,
  
),
  ),);
            } 
          ),
          ListTile(
            leading: const Icon(Icons.food_bank),
            title: const Text('Restaurantes'),
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  const  HomePageRestaurant(),
                      ));
            } 
          ),
            ListTile(
            leading: const Icon(Icons.food_bank),
            title: const Text('Menu'),
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  const  Menu(),
                      ));
            } 
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('configuracion'),
             onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  const Perfil(),
                      ));
            } 
          ),
          const ListTile(
            leading: Icon(Icons.description),
            title: Text('Politicas'),
           
          ),
          const Divider(),
          ListTile(
            title: const Text('Salir'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}