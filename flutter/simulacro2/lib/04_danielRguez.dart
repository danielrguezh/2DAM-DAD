import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor:  Color(0xFFF7F3E9));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'examen',
      home: MyMainWidget(),
    );
  }
}

// 🔹 Clase principal
class MyMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget principal')),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "DISCURSO DE GETTYSBURG",
              style: TextStyle(
                color: Color(0xFF003366),
                fontSize: 34,
                fontWeight: FontWeight.bold,
                fontFamily: 'Garamound'
              ),
            ),
            Text(
              "Abraham Lincoln, 19 de noviembre de 1863",
              style: TextStyle(
                color: Color(0xFF003366),
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Garamound'
              ),
            ),
            Text(
              "Hace ochenta y siete años, nuestros padres hicieron nacer en este continente una nueva nación, concebida en Libertad y consagrada al principio de que todas las personas son creadas iguales. Ahora estamos envueltos en una gran guerra civil que pone a prueba si esta nación, o cualquier nación así concebida y así consagrada, puede perdurar en el tiempo...",
              style: TextStyle(
                color: Color(0xFF2B2B2B),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman'
              ),
            ),
            ElevatedButton(
              onPressed: null,
              
              child: Text(
                "Saber más..."
              ),
             ),
          ],
        )
      ),
    );
  }
}
class MyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        child: child
      )

      
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black,
          prefixIcon: Icon(icon),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: Colors.white, width: 1)
          )
        ),
      ),
    );
  }
}