import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'package:motilon/mapa/animated_market_map.dart';
import 'package:motilon/prinpical/main.dart';
import 'package:motilon/prinpical/screens/favorite_screen.dart';


//import 'package:motilon/agencia/agencia/explore.dart';


//import 'package:motilon/map/animated_market_map.dart';
import 'package:motilon/profile/profile.dart';
import 'package:motilon/restaurantes/travel_app.dart';
import 'package:motilon/restaurants/view/home.dart';
import 'package:motilon/sites/travel_app.dart';


import '../sites/ui/feed/widgets/favorite.dart';


//import 'package:motilon/restaurants/view/home.dart';
//import 'package:motilon/sites/travel_app.dart';

class NavBar extends StatefulWidget {
  
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? userId;
  @override
  void initState() {
    super.initState();
    _getCurrentUserId();
  }

 void _getCurrentUserId() async {
  User? user = _auth.currentUser;
  if (user != null) {
    // Obtener el ID del usuario actual
    userId = user.uid;

    // Obtener el nombre de usuario desde Firestore
    DocumentSnapshot snapshot =
        await FirebaseFirestore.instance.collection('users').doc(userId).get();
    if (snapshot.exists) {
      // Especifica el tipo de datos devuelto por snapshot.data() como Map<String, dynamic>
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

      setState(() {
        // Accede al nombre de usuario usando la clave 'name'
        userId = data['email'];
      });
    }
  }
}
  @override
  Widget build(BuildContext context) {
 
  
   
    return Drawer(
      
      child: ListView(
        
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Carlos Albarracin '),
            accountEmail:  Text(  userId != null ? ' $userId' : 'Usuario no autenticado',
      style: TextStyle(fontSize: 16, color: Colors.grey),),
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
       
     
          ListTile(
            leading: const Icon(Icons.food_bank),
            title: const Text('Restaurantes'),
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  const Restaurante(),
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
           ListTile(
            leading: const Icon(Icons.food_bank),
            title: const Text('Favoritos'),
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  FavoritesScreen(),
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