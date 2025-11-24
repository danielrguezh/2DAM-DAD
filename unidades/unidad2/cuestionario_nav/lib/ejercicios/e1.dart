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
      title: 'Tema claro/oscuro',
      home: Scaffold(
        appBar: AppBar(title: const Text('Home Page')),

        body: Center(
          child: ElevatedButton(onPressed: () {}, child: Text('Botón')),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.light_mode),
        ),
      ),
    );
  }
}
      