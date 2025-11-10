
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Flutter',
      home: MyMainWidget(),
    );
  }
}

// 🔹 Clase principal
class MyMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Campos de texto')),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyMainWidget(),
            SizedBox(height: 20,),
            MyTextField()
          ],
        )
      ),
    );
  }
}

class MyTextField extends StatelessWidget{
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(),
      
    );
  }
}