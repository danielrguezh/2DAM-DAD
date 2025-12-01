import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(const BotonSaltarinApp());
}

class BotonSaltarinApp extends StatelessWidget {
  const BotonSaltarinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JuegoBotonSaltarin(),
    );
  }
}

// ---------------- CONTROLADOR ----------------

class GameController {
  int puntos = 0;
  int tiempo = 15;

  double top = 100;
  double left = 100;

  final Random random = Random();

  void moverBoton() {
    left =
        random.nextDouble() *
        (900 - 50); // 50 es tamaño del botón para no salir
    top = random.nextDouble() * (500 - 50);
  }

  bool get tiempoTerminado => tiempo <= 0;
  bool get haGanado => puntos >= 10;
}

// --------------- WIDGET PRINCIPAL ----------------

class JuegoBotonSaltarin extends StatefulWidget {
  const JuegoBotonSaltarin({super.key});

  @override
  State<JuegoBotonSaltarin> createState() => _JuegoBotonSaltarinState();
}

class _JuegoBotonSaltarinState extends State<JuegoBotonSaltarin> {
  final GameController game = GameController();

  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (!game.tiempoTerminado && !game.haGanado) {
        setState(() {
          game.tiempo--;
        });
      } else {
        t.cancel();
      }
    });

    game.moverBoton();
  }

  void pulsarBoton() {
    if (game.tiempoTerminado || game.haGanado) return;
    setState(() {
      game.puntos++;
      game.moverBoton();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botón saltarín')),
      body: Stack(
        children: [
          // Información del juego
          Positioned(
            top: 30,
            left: 20,
            child: Text(
              'Tiempo: \${game.tiempo}  |  Puntos: \${game.puntos}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // BOTÓN QUE SE MUEVE
          Positioned(
            top: 30,
            left: 20,
            child: Text(
              'Tiempo: ${game.tiempo}  |  Puntos: ${game.puntos}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // Botón que se mueve
          if (!game.tiempoTerminado && !game.haGanado)
            Positioned(
              top: game.top,
              left: game.left,
              child: ElevatedButton(
                onPressed: pulsarBoton,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(50, 50),
                ),
                child: const Text('Saltarín'),
              ),
            ),

          // Mensaje cuando termina el tiempo o gana
          if (game.tiempoTerminado && !game.haGanado)
            Center(
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  '¡Se acabó el tiempo!',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          if (game.haGanado)
            Center(
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  '¡Ganaste!',
                  style: TextStyle(fontSize: 30, color: Colors.yellow),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
