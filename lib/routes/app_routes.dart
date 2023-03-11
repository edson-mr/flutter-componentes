import 'package:aprendiendo/models/models.dart';
import 'package:aprendiendo/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initialRoute = "Home";

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'Home': (context) => const HomeScreen(),
  //   'Listview1': (context) => const Listview1Screen(),
  //   'Listview2': (context) => const Listview2Screen(),
  //   'Alert': (context) => const AlertScreen(),
  //   'Card': (context) => const CardScreen(),
  // };

  static final List<MenuOption> menuOptions = [
    MenuOption(
        route: 'Listview1',
        icon: Icons.list,
        nombre: 'Lisview 1 Screen',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'Listview2',
        icon: Icons.list_alt,
        nombre: 'Lisview 2 Screen',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'Alert',
        icon: Icons.add_alert_sharp,
        nombre: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'Card',
        icon: Icons.card_giftcard,
        nombre: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'Avatar',
        icon: Icons.account_circle,
        nombre: 'Avatar Screen',
        screen: const AvatarScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
      AppRoutes.initialRoute: (context) => const HomeScreen(),
    };

    for (MenuOption option in menuOptions) {
      appRoutes.addAll({
        option.route: (context) => option.screen,
      });
    }

    return appRoutes;
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Listview1Screen(),
    );
  }
}
