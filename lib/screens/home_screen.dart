import 'package:aprendiendo/models/models.dart';
import 'package:aprendiendo/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuOption> menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, i) {
            MenuOption option = menuOptions[i];

            return ListTile(
              leading: Icon(option.icon),
              title: Text(option.nombre),
              onTap: () => Navigator.pushNamed(context, option.route),
            );
          },
          separatorBuilder: (context, index) => const Divider(
                thickness: 2,
              ),
          itemCount: menuOptions.length),
    );
  }
}
