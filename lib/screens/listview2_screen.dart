import 'package:aprendiendo/theme/tema.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Edson', 'Tony', 'Gala', 'Bailey', 'Oddie', 'Copito'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview2Screen'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Tema.primario,
                ),
                title: Text(names[index]),
                trailing: const Icon(
                  Icons.arrow_circle_right_rounded,
                  color: Tema.primario,
                ),
              ),
          separatorBuilder: (context, index) => const Divider(
                thickness: 2,
              ),
          itemCount: names.length),
    );
  }
}
