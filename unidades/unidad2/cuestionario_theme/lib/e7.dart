

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hola"),
            Icon(Icons.star),
            ElevatedButton(onPressed: () {}, child: Text("Enviar")),
            Theme(
              data: Theme.of(context).copyWith(elevatedButtonTheme: ElevatedButtonThemeData()),
              child: Text("Hola")
            )
          ],
        ),
      ),
    );
  }
}
