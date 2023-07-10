import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
        backgroundColor: Colors.amberAccent.shade700,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  labelText: 'NOMBRE',
                  hintText: 'Nombre del usuario',
                  helperText: 'Solo ingresar letras',
                  counterText: '3 caracteres',
                  suffixIcon: Icon(Icons.person),
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
