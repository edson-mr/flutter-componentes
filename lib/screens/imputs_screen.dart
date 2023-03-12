import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('InputsScreen'),
      ),
      body: const Center(
         child: Text('InputsScreen'),
      ),
    );
  }
}