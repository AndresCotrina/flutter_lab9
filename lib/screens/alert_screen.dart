import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('¡Alerta Importante!'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Porfavor revisar si su contenido esta bien escrito'),
            SizedBox(height: 15.0),
            FlutterLogo(size: 80)
          ],
        ),
        actions: [
          TextButton(onPressed: ()=> Navigator.pop(context), child: const Text('Cancelar',style: TextStyle(fontSize: 20),))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent.shade700,
        child: const Icon(Icons.add_alert),
        onPressed: ()=> displayCupertinoDialog(context),
      ),
    );
  }
}
