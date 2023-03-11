import 'dart:math';

import 'package:aprendiendo/theme/tema.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
   
  const ContainerScreen ({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {

double width=50;
double height=50;
Color color= Tema.primario;
BorderRadiusGeometry borderRadius = BorderRadius.circular(10);

void cambiarContainer(){
  setState(() {
    Random random = Random();
    width= random.nextInt(300).toDouble() +30;
    height= random.nextInt(300).toDouble() +30;
    color= Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    borderRadius= BorderRadius.circular(random.nextInt(50).toDouble());
});

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ContainerScreen'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutCubic,
          width: width,
          height: height,
          decoration: BoxDecoration(
          color: color,
         borderRadius: borderRadius,
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: cambiarContainer,
      child: const Icon(Icons.play_arrow, size: 40,),),
    );
  }

}