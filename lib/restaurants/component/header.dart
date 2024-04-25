import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:motilon/restaurants/utils/restaurant_images.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //* Restaurant Image
      Container(
        width: 160,
        height: 150,
        margin: const EdgeInsets.only(bottom: 12, top: 6),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(RestaurantPathImages.profileImage),
              fit: BoxFit.fill),
        ),
      ),
      //* The Name Of Restaurant
      Text(
        'Restaurante Norte de Santander'.toUpperCase(),
        style: GoogleFonts.pacifico(),
      ),

      const Divider(
        thickness: 0.7,
        color: Colors.grey,
      )
    ]);
  }
}
