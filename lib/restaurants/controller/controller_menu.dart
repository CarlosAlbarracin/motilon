import 'dart:collection';


import 'package:motilon/restaurants/model/m_menu.dart';
import 'package:motilon/restaurants/utils/breakfast_path_images.dart';
import 'package:motilon/restaurants/utils/dessrt_images.dart';
import 'package:motilon/restaurants/utils/dinner_images.dart';
import 'package:motilon/restaurants/utils/lunch_images.dart';


class ControllerMenu {
  static final List<ModelMenu> _dataMenu = [
    ModelMenu(
      title: 'spezia (Cucuta)',
      image: BreakfastPathImages.frenchToast,
      urlPage:
          'https://www.instagram.com/speziarestaurante/?hl=en',
    ),
    ModelMenu(
      title: 'Londeros Sur (Cucuta)' ,
      image: BreakfastPathImages.casserole,
      urlPage: 'https://www.instagram.com/londerosur/?hl=en',
    ),
    ModelMenu(
      title: 'la granja (chinacota)',
      image: LunchPathImages.creamyGarlicChickenBreasts,
      urlPage: 'https://lagranjachinacota.negocio.site/',
    ),
    ModelMenu(
      title: 'La Mansion (ocaña)',
      image: LunchPathImages.crockpotChickenBreasts,
      urlPage: 'https://www.instagram.com/lamansion_cg/?hl=en',
    ),
    ModelMenu(
      title: 'Restaurante Ank (Cucuta)',
      image: DinnerPathImages.beiyrut,
      urlPage:
          'https://www.restauranteank.com/',
    ),
    ModelMenu(
      title: 'Molinito (cucuta)',
      image: DinnerPathImages.markWahlberger,
      urlPage: 'https://www.molinitorestaurante.com/',
    ),
    ModelMenu(
      title: 'La provincia (ocaña)',
      image: DessertPathImages.iceCream,
      urlPage: 'https://www.instagram.com/laprovincia_ocana/',
    ),
    ModelMenu(
      title: 'El Riconcito (Bochalema)',
      image: DessertPathImages.moltenCake,
      urlPage: 'https://www.foodandwine.com/recipes/molten-chocolate-cakes/',
    ),
  ];
  static UnmodifiableListView<ModelMenu> get dataMenu =>
      UnmodifiableListView(_dataMenu);
  static int get dataLength => _dataMenu.length;
  static ModelMenu getMenu(int index) => _dataMenu.elementAt(index);
}
