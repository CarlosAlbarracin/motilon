import 'package:flutter/material.dart';

import 'package:motilon/menu/views/pages/home_page.dart';
import 'package:motilon/menu/views/widgets/custom_bottom_nav.dart';
// import 'package:travel_app/theme.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
            child: PageView(
          children: const [
            HomePage(),
          ],
        )),
        const Align(alignment: Alignment.bottomCenter, child: CustomNavbar())
      ],
    );
  }
}
