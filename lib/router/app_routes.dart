import 'package:flutter/material.dart';
import 'package:neryza_unit2/models/models.dart';
import 'package:neryza_unit2/screens/screens.dart';

import '../models/menu_option.dart';
import '../screens/alert_screen.dart';
import '../screens/animation_screen.dart';
import '../screens/card_screen.dart';
import '../screens/home_screen.dart';
import '../screens/listview_screen.dart';
import '../screens/listview_screen_2.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'alert',
        icon: Icons.abc_rounded,
        name: 'Alert screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.ads_click_rounded,
        name: 'Animated',
        screen: const AnimationScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Card',
        screen: const CardScreen()),
    //MenuOption(route: 'home', icon: Icons.home, name: 'Home', screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_outlined,
        name: 'Listview type 1',
        screen: const ListViewScreen()),
    MenuOption(
        route: 'listview',
        icon: Icons.list_rounded,
        name: 'Listview',
        screen: const ListView2Screen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
