import 'package:flutter/material.dart';

void main() => runApp(const GettysburgApp());

class GettysburgApp extends StatelessWidget {
  const GettysburgApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF7F3E9)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color(0xFF003366),
            fontSize: 34,
            fontWeight: FontWeight.bold,
            fontFamily: 'Garamound',
          ),
          titleMedium: TextStyle(
            color: Color(0xFF003366),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Garamound',
          ),
          bodyLarge: TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman',
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF003366),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
      ),
      home: const GettysburgPage(),
    );
  }
}

class GettysburgPage extends StatelessWidget {
  const GettysburgPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gettysburg")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "DISCURSO DE GETTYSBURG",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20),

            Text(
              "Abraham Lincoln, 19 de noviembre de 1863",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),

            Text(
              "Hace ochenta y siete años, nuestros padres hicieron nacer en este continente una nueva nación, concebida en Libertad y consagrada al principio de que todas las personas son creadas iguales. Ahora estamos envueltos en una gran guerra civil que pone a prueba si esta nación, o cualquier nación así concebida y así consagrada, puede perdurar en el tiempo...",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),

            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Continuar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}