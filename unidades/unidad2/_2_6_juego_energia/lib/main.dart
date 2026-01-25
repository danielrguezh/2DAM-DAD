import 'package:flutter/material.dart';

void main() {
  runApp(const MiniJuegoEstado());
}

class MiniJuegoEstado extends StatefulWidget {
  const MiniJuegoEstado({super.key});

  @override
  State<MiniJuegoEstado> createState() => _MiniJuegoEstadoState();
}

class _MiniJuegoEstadoState extends State<MiniJuegoEstado> {
  int energia = 50;
  bool isDark = false;

  // Mensaje según la energía
  String get mensaje {
    if (energia == 0) {
      return "Has perdido toda tu energía";
    } else if (energia == 50) {
      return "Estás a mitad de camino";
    } else if (energia == 100) {
      return "¡Has escapado!";
    } else {
      return "Sigue ajustando la energía…";
    }
  }

  // Color según la energía
  Color get colorEnergia {
    if (energia < 30) {
      return Colors.red;
    } else if (energia <= 70) {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mini-juego: Gestión de estado"),
          actions: [
            IconButton(
              icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Energía del jugador",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),

              Text(
                energia.toString(),
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: colorEnergia,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                mensaje,
                style: const TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (energia < 100) {
                          energia += 10;
                        }
                      });
                    },
                    child: const Text("➕ Aumentar"),
                  ),
                  const SizedBox(width: 10),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (energia > 0) {
                          energia -= 10;
                        }
                      });
                    },
                    child: const Text("➖ Disminuir"),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    energia = 50;
                  });
                },
                child: const Text("🔄 Reiniciar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}