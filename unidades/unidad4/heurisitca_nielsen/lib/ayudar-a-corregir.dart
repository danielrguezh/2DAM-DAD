import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ErrorHelpExample(),
    );
  }
}

class ErrorHelpExample extends StatefulWidget {
  const ErrorHelpExample({super.key});

  @override
  State createState() => _ErrorHelpExampleState();
}

class _ErrorHelpExampleState extends State {
    String answer ="";
    bool isNumber=true;
    void checkAns(String value){
      setState(() {
        isNumber=int.tryParse(value) != null;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Heurística 9 – Ayuda con errores')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (value) => answer=value,
              decoration: InputDecoration(
                labelText: "Introduce un número entero",
                errorText: isNumber? null : "Error: Debe ser un etero",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {checkAns(answer)},
              
              child: Text("Comprobar"),
            ),
          ],
        ),
      ),
    );
  }
}
