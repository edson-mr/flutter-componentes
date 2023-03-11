
import 'package:aprendiendo/theme/tema.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('AvatarScreen'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Tema.primario.withGreen(100),
                child: const Text('MR'),
              ),
            )
          ],
      ),
      body: const Center(
         child: CircleAvatar(
          radius: 150,
          backgroundImage: NetworkImage('https://falabella.scene7.com/is/image/FalabellaPE/18165168_1'),
         ),
      ),
    );
  }
}