
import 'package:flutter/material.dart';
import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[

    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'card', name: 'Card Widget', screen: const CardScreen()),
    MenuOption(route: 'alert', name: 'Alert Widget', screen: const AlertScreen()),
    
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final opciones in menuOptions){
      appRoutes.addAll({opciones.route:(BuildContext context) => opciones.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    print(settings);
    return MaterialPageRoute(builder:(context) => const CardScreen());
  }
}