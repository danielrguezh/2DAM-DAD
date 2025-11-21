import 'package:flutter/material.dart';

void main() {
  runApp(const CustomWidgetApp());
}

class CustomWidgetApp extends StatelessWidget {
  const CustomWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Widgets')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              CustomSquare(icon: Icons.work, label: 'Trabajo'),
              SizedBox(height: 8),
              CustomSquare(icon: Icons.health_and_safety, label: 'Salud'),
              SizedBox(height: 8),
              CustomSquare(icon: Icons.home, label: 'Hogar'),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSquare extends StatelessWidget {
  final IconData icon;
  final String label;

  const CustomSquare({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12), // Espaciado interno
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16), // Bordes redondeados
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Ícono dentro de círculo con sombra
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Icon(icon, size: 28),
          ),

          const SizedBox(width: 8), // Separación de 8 px

          Text(
            label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}