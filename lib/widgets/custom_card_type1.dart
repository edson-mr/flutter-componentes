import 'package:aprendiendo/theme/tema.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Tema.primario.withOpacity(.7),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.account_balance_sharp,
              color: Tema.primario,
            ),
            title: Text('Titulo de mi Card'),
            subtitle: Text(
                'Qui adipisicing sunt id culpa pariatur est voluptate eiusmod proident exercitation et minim ea velit.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('cancelar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('aceptar'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
