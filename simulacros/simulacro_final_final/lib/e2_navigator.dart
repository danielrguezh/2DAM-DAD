import 'package:flutter/material.dart';

void main() {
  runApp(const NavigatorBasicoApp());
}

class NavigatorBasicoApp extends StatelessWidget {
  const NavigatorBasicoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InicioPage(),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // TODO: Botón para ir a InfoPage con Navigator.push
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const InfoPage(),
                  ),
                );
              },
              child: const Text('Ir a Info'),
            ),

            const SizedBox(height: 12),
            // TODO: Botón para ir a ContactoPage con Navigator.push
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ContactoPage(),
                  ),
                );
              },
              child: const Text('Ir a Contacto'),
            ),
          ],
        ),
      ),
    );
  }
}
// TODO: Crea InfoPage (StatelessWidget)
// - Scaffold con AppBar "Info"
// - Un texto con información
// - Botón "Volver" que haga Navigator.pop
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Info')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Esta es la pantalla de información.\nAquí va texto informativo.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Crea ContactoPage (StatelessWidget)
// - Scaffold con AppBar "Contacto"
// - Un texto con email/teléfono ficticio
// - Botón "Volver" que haga Navigator.pop
class ContactoPage extends StatelessWidget {
  const ContactoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacto')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Contacto:\nemail@ejemplo.com\n+34 600 123 456',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}