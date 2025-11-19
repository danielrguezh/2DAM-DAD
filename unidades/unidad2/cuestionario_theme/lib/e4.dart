

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
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
      ),
      home: const SeedColorScreen(),
    );
  }
}

class SeedColorScreen extends StatelessWidget {
  const SeedColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(        
        title: const Text('Paleta con seedColor'),
        backgroundColor: colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola"),
            Icon(Icons.star),
            ElevatedButton(onPressed: () {}, child: Text("Enviar")),
          ],
        ),
      ),
    );
  }
}
