


import 'package:fl_components_new/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/alert_screen.dart';
import '../screens/card_screen.dart';
import '../screens/home_screen.dart';
import '../screens/listview1_screen.dart';
import '../screens/listview2_screen.dart';

class AppRoutes{

  //DATA MEMBERS
  static const String initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: HomeScreen()),
    MenuOption(route: 'listView1', icon: Icons.list, name: 'ListView 1 Screen', screen: ListView1Screen()),
    MenuOption(route: 'listView2', icon: Icons.list, name: 'ListView 2 Screen', screen: ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card Screen', screen: CardScreen()),
    MenuOption(route: 'alert', icon: Icons.doorbell_outlined, name: 'Alert Screen', screen: AlertScreen()),
  ];

/*  static  Map<String,Widget Function(BuildContext)>routes= {
    'home': (context) => const HomeScreen(),
    'listView1': (context) => const ListView1Screen(),
    'listView2': (context) => const ListView2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  };*/

  static Map<String,Widget Function(BuildContext)>getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes= {} ;

    for (final option in menuOptions){
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;

  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(
        builder: (context)=> const HomeScreen()
    );
  }







}