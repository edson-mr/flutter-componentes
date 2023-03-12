import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: null,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) => print(value),
                validator: (value) {
                  return value!.length < 3 ? 'minimo 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: 'ingrese su nombre...',
                  labelText: 'nombre',
                  // helperText: 'sólo letras',
                  // counterText: '3 caracteres',
                  prefixIcon: const Icon(Icons.person),
                  // icon: Icon(Icons.person_add),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
