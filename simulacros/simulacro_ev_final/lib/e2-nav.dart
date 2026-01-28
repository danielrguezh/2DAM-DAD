import 'package:flutter/material.dart';

void main() {
  runApp(const RutasApp());
}

class RutasApp extends StatelessWidget {
  const RutasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO: definir aquí el mapa de routes
      initialRoute: '/',
      routes: {
        '/': (_) => const InicioPage(),
        '/perfil': (_) => PerfilPage(),
        '/ajustes': (_) => AjustesPage(),
      }
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
            // TODO: botón para ir a PerfilPage con pushNamed
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PerfilPage(),
                  ),
                );
              },
              child: const Text('Ir a Perfil'),
            ),
            // TODO: botón para ir a AjustesPage con pushNamed
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AjustesPage(),
                  ),
                );
              },
              child: const Text('Ir a Ajustes'),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: crear PerfilPage
// - AppBar con título "Perfil"
// - Texto informativo
// - Botón para volver con Navigator.pop
class PerfilPage extends StatelessWidget{
  const PerfilPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Pantalla de perfil.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "/");
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
// TODO: crear AjustesPage
// - AppBar con título "Ajustes"
// - Texto informativo
// - Botón para volver con Navigator.pop
class AjustesPage extends StatelessWidget {
  const AjustesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajustes')),
            body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Pantalla de ajustes.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "/");
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
