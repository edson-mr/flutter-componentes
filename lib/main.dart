import 'package:aprendiendo/routes/app_routes.dart';
import 'package:aprendiendo/theme/tema.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Algunos Componentes Básicos',
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: Tema.light,
    );
  }
}
