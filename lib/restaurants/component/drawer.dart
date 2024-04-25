import 'package:flutter/material.dart';

import 'package:motilon/restaurants/component/header.dart';
import 'package:motilon/restaurants/component/setting_drawer.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: SafeArea(
            child: Column(
      children: [
        //* Header
        HeaderDrawer(),

        //* Setting
        SettingDrawer(),
      ],
    )));
  }
}
