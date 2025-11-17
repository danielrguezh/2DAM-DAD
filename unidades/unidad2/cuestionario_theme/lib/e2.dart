

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: const Material3Page(),
    );
  }
}

class Material3Page extends StatelessWidget {
  const Material3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Material 2")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Introduce tu nombre",
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {}, child: Text("Enviar"))
          ],
        ),
      ),
    );
  }
}
