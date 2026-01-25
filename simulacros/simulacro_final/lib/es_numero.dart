import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NumberCheckerPage(),
    );
  }
}

class NumberCheckerPage extends StatefulWidget {
  const NumberCheckerPage({super.key});

  @override
  State createState() => _NumberCheckerPageState();
}

class _NumberCheckerPageState extends State {
  String input = '';
  String result = '';
  bool isNumber=true;

  void checkNumber(String value) {
    setState(() {
      isNumber=int.tryParse(value) != null;
      if(isNumber){
        result = 'Número correcto: $input';
      }else{
        result = '';
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Comprobar número')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (value) {
                input = value;
              },
              decoration: InputDecoration(
                labelText: 'Introduce un número',
                errorText: isNumber? null : "Error: Debe ser un etero",
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => checkNumber(input),
              child: const Text('Comprobar'),
            ),

            const SizedBox(height: 20),
            Text(result),
          ],
        ),
      ),
    );
  }
}
