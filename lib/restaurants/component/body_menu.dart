import 'package:flutter/cupertino.dart';

import 'package:motilon/restaurants/component/crad_menu.dart';
import 'package:motilon/restaurants/controller/controller_menu.dart';


class BodyMenu extends StatelessWidget {
  const BodyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ControllerMenu.dataLength,
        itemBuilder: (context, index) {
          return CardMenu(data: ControllerMenu.getMenu(index));
        });
  }
}
