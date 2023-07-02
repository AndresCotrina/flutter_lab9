import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void display(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          shadowColor: Colors.red,
              title: const Text('Alerta de Proceso'),
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Esto es el contenido interno de la alerta"),
                  SizedBox(height: 10),
                  FlutterLogo(size: 100)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child:
                        const Text('Cancelar', style: TextStyle(fontSize: 20,color: Colors.red)))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.add_alert),
        onPressed: () {
          display(context);
        },
      ),
    );
  }
}
