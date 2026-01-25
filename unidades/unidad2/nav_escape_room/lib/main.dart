import 'package:flutter/material.dart';

void main() {
  runApp(const EscapeRoomApp());
}

class EscapeRoomApp extends StatelessWidget {
  const EscapeRoomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Escape Room',
      initialRoute: '/',
      routes: {
        '/': (_) => const SalaInicial(),
        '/pista1': (_) => const Pista1(),
        '/victoria': (_) => const Victoria(),
        '/atrapado': (_) => const Atrapado(),
      },
    );
  }
}

class SalaInicial extends StatelessWidget {
  const SalaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escape Room - Hogwarts')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¿A qué casa pertenece Harry Potter?',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pista1');
              },
              child: const Text('Gryffindor'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/atrapado');
              },
              child: const Text('Hufflepuff'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/atrapado');
              },
              child: const Text('Slytherin'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/atrapado');
              },
              child: const Text('Ravenclaw'),
            ),
          ],
        ),
      ),
    );
  }
}

class Pista1 extends StatelessWidget {
  const Pista1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pista 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¿Desde dónde sale el Hogwarts Express?',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/victoria');
              },
              child: const Text('Andén 9¾'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/atrapado');
              },
              child: const Text('Estación Central de Londres'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/atrapado');
              },
              child: const Text('Andén 7½'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/atrapado');
              },
              child: const Text('Hogsmeade'),
            ),
          ],
        ),
      ),
    );
  }
}

class Victoria extends StatelessWidget {
  const Victoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('Victoria')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Has escapado con éxito!',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Volver a empezar'),
            ),
          ],
        ),
      ),
    );
  }
}

class Atrapado extends StatelessWidget {
  const Atrapado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: const Text('Game Over')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Has quedado atrapado',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Intentar de nuevo'),
            ),
          ],
        ),
      ),
    );
  }
}
