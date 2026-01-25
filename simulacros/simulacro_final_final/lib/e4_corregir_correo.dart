import 'package:flutter/material.dart';

void main() {
  runApp(const ErrorAccesibleApp());
}

class ErrorAccesibleApp extends StatelessWidget {
  const ErrorAccesibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State createState() => _FormPageState();
}

class _FormPageState extends State {
  final TextEditingController _emailCtrl = TextEditingController();
  bool hayError = false;
  void validar() {
    // TODO: validar el correo y mostrar el error
    setState(() {
      hayError = !_emailCtrl.text.contains('@');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulario')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Correo electrónico'),
            const SizedBox(height: 8),

            TextField(
              controller: _emailCtrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'usuario@email.com',
              ),
            ),

            const SizedBox(height: 12),

            // TODO: aquí debe aparecer el mensaje de error con icono
            if (hayError)
              Row(
                children: const [
                  Icon(Icons.error, color: Colors.red, size: 20),
                  SizedBox(width: 6),
                  Text(
                    'Introduce un correo válido',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),

            const SizedBox(height: 16),

            ElevatedButton(onPressed: validar, child: const Text('Enviar')),
          ],
        ),
      ),
    );
  }
}
