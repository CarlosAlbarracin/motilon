import 'package:flutter/material.dart';

import 'package:motilon/menu/theme.dart';


class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      color: bgColor2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/home.png')),
              const SizedBox(
                width: 8,
              ),
              Container(
                child: Center(
                  child: Text('Home',
                      style: textStyle3.copyWith(
                          decoration: TextDecoration.none,
                          color: mainCOlor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              )
            ],
          ),
          const Image(image: AssetImage('assets/Notif.png')),
          const Image(image: AssetImage('assets/Menu.png')),
          const Image(image: AssetImage('assets/Setting.png')),
        ],
      ),
    );
  }
}
