import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/Screens/screens.dart';


class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'ListView 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'istview2', name: 'ListView 2', screen: const ListView2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.add_card),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'Inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'Slider', name: 'Slider', screen: const SliderScreen(), icon: Icons.slideshow_outlined),
    MenuOption(route: 'LisViewBuilder', name: 'InfiniteScrol & Pull to refresh', screen: const LisViewBuilderScreen(), icon: Icons.build_circle_outlined),


  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes ={};
    appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen() });

    for(final option in menuOptions){
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }


  /*static Map<String, Widget Function(BuildContext)> routes ={
  'home'     : (BuildContext context) => const HomeScreen(),
  'listview1': (BuildContext context) => const ListView1Screen(),
  'listview2': (BuildContext context) => const ListView2Screen(),
  'Alert'    : (BuildContext context) => const AlertScreen(),
  'Card'     : (BuildContext context) => const CardScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder:(context) => const AlertScreen(),
    );
  }

}

