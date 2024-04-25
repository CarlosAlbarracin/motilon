import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:motilon/restaurants/component/body_menu.dart';
import 'package:motilon/restaurants/component/body_video.dart';

class HomePageRestaurant extends StatefulWidget {
  const HomePageRestaurant({Key? key}) : super(key: key);
  @override
  State<HomePageRestaurant> createState() => _HomePageRestaurantState();
}

class _HomePageRestaurantState extends State<HomePageRestaurant> {
  int indexPage = 0;
  List<Widget> pages = [const BodyMenu(), const BodyVideo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          'Restaurantes Norte de santander',
          style: GoogleFonts.pacifico(),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(4),
          
          )
        ],
      ),
      drawer: const Drawer(),
      body: pages[indexPage],
      
    );
  }

  // * update content
}
