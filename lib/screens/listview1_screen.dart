import 'package:aprendiendo/theme/tema.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Edson', 'Tony', 'Bailey', 'Oddie', 'Copito'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          ...names
              .map((e) => ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      color: Tema.primario,
                    ),
                    title: Text(e),
                    trailing: const Icon(
                      Icons.add_ic_call,
                      color: Tema.primario,
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
