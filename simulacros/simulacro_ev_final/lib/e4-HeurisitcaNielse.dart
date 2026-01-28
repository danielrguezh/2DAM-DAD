import 'package:flutter/material.dart';

void main() {
  runApp(const IncidenciasApp());
}

class IncidenciasApp extends StatelessWidget {
  const IncidenciasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrioridadPage(),
    );
  }
}

class PrioridadPage extends StatefulWidget {
  const PrioridadPage({super.key});

  @override
  State createState() => _PrioridadPageState();
}

class _PrioridadPageState extends State {
  // TextEditingController _ctrl = TextEditingController();
  String priority='Baja';
  String mensaje = '';

  void guardar() {
    // final codigo = _ctrl.text.trim();

    setState(() {
      // if (codigo == '1') mensaje = 'Prioridad: Baja';
      // else if (codigo == '2') mensaje = 'Prioridad: Media';
      // else if (codigo == '3') mensaje = 'Prioridad: Alta';
      // else mensaje = 'Código no válido (usa 1, 2 o 3)';
      mensaje='Prioridad: ${priority}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Heurística 6 – Reconocer')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text('Introduce el código de prioridad (1, 2 o 3):'),
            const Text('Selecciona la prioridad:'),
            const SizedBox(height: 10),

            // TextField(
            //   controller: _ctrl,
            //   keyboardType: TextInputType.number,
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     hintText: '1 = Baja, 2 = Media, 3 = Alta',
            //   ),
            // ),
            DropdownButtonFormField(
              initialValue: 'Baja', decoration: const InputDecoration(border: OutlineInputBorder()), 
              items: const [
                DropdownMenuItem(value: 'Baja', child: Text('Baja')),
                DropdownMenuItem(value: 'Media', child: Text('Media')),
                DropdownMenuItem(value: 'Alta', child: Text('Alta')),
              ],
              onChanged:(value) => {priority=value!},
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: guardar,
              child: const Text('Guardar'),
            ),

            const SizedBox(height: 16),

            Text(mensaje, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}