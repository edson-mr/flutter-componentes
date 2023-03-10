import 'package:aprendiendo/theme/tema.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String url;
  final String? name;
  const CustomCardType2({Key? key, required this.url, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Tema.primario.withOpacity(.8),
      margin: const EdgeInsets.symmetric(vertical: 15),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(url),
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(
                right: 10,
                top: 7,
                bottom: 7,
              ),
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
