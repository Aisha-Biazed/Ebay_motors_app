import 'package:ebay_motors/view/screen/filter/filter_screen.dart';
import 'package:ebay_motors/view/screen/home/car_details_screen.dart';
import 'package:ebay_motors/view/screen/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/cart/cart_screen.dart';
import '../view/screen/settings/settings_screen.dart';

abstract class NavigationBarController extends GetxController {
  changePage(int currentpage);
}

class NavigationBarControllerImp extends NavigationBarController {
  int currentpage = 0;
  List<Widget> listPage = [
    SettingsScreen(),
    HomeScreen(),
    CartScreen(),
  ];

  List bottomappbar = [
    {"title": "n", "icon": Icons.settings_sharp},
    {"title": "home", "icon": Icons.home},
    {"title": "profile", "icon": Icons.shopping_cart_outlined},
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
