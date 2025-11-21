import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Flutter'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fila superior con icono grande
              const Row(
                children: [
                  Icon(Icons.person, size: 40),
                  SizedBox(width: 16),
                  Text(
                    'Usuario',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Lista de opciones con iconos
              const Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 10),
                  Text('Favoritos'),
                ],
              ),

              const SizedBox(height: 16),

              const Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(width: 10),
                  Text('Notificaciones'),
                ],
              ),

              const SizedBox(height: 16),

              const Row(
                children: [
                  Icon(Icons.folder),
                  SizedBox(width: 10),
                  Text('Archivos'),
                ],
              ),

              const SizedBox(height: 16),

              const Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 10),
                  Text('Configuración'),
                ],
              ),

              const SizedBox(height: 16),

              const Row(
                children: [
                  Icon(Icons.help_center),
                  SizedBox(width: 10),
                  Text('Ayuda'),
                ],
              ),

              const SizedBox(height: 24),

              // Botón centrado
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Continuar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
