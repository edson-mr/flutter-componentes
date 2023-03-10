import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void mostrarDialogoAndroid(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: const Text(
          'alerta',
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('esto es una información de mi alerta personalizada'),
            SizedBox(
              height: 5,
            ),
            FlutterLogo(
              size: 70,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'cerrar',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  void mostrarDialogoIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text(
          'alerta',
          // textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('esto es una información de mi alerta personalizada'),
            SizedBox(
              height: 5,
            ),
            FlutterLogo(
              size: 70,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'cerrar',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertScreen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => mostrarDialogoAndroid(context),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'mostrar diálogo',
                style: TextStyle(fontSize: 20),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
