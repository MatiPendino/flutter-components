import 'package:componentes/models/models.dart';
import 'package:componentes/screens/screens.dart';

import 'package:flutter/material.dart';


class AppRoutes {

  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listview1', icon: Icons.sports_football, name: 'Listview1 Screen', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.sports_baseball, name: 'Listview2 Screen', screen: const ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.sports_basketball, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.sports_bar, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Avatar Screen', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_arrow_outlined, name: 'Animated Screen', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.rocket_launch, name: 'Input Screen', screen: const InputScreen()),
    MenuOption(route: 'slider', icon: Icons.slideshow_rounded, name: 'Slider Screen', screen: const SliderScreen()),
    MenuOption(route: 'listview_builder', icon: Icons.construction, name: 'Infinity scroll & pull to refresh', screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'listview1': (BuildContext context) => const ListView1Screen(),
    'home': (BuildContext context) => const HomeScreen(),
    'listview2':(BuildContext context) => const ListView2Screen(),
    'card':(BuildContext context) => const CardScreen(),
    'alert':(BuildContext context) => const AlertScreen()
  };*/

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ListView1Screen(),
    );
  }
}