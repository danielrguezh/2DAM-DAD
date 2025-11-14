import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

// -------------------------------------------------------------
//                APLICACIÓN CON THEME
// -------------------------------------------------------------
class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.teal);

    return MaterialApp(
      theme: ThemeData(
        colorScheme: colorScheme,
        iconTheme: IconThemeData(
          color: colorScheme.primary,
          size: 40,
        ),
      ),
      home: const MyMainWidget(),
    );
  }
}

// -------------------------------------------------------------
//                WIDGET PRINCIPAL
// -------------------------------------------------------------
class MyMainWidget extends StatelessWidget {
  const MyMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.school),
      ),
    );
  }
}
