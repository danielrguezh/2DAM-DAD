import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:
        Scaffold(
          appBar: AppBar(
            title: Text("Mi primera app con Scafold"),
          ),
          body: Center(
            child: InfoCard(),
          ),
        )
    );
  }


}

class InfoCard extends StatelessWidget {
    const InfoCard({super.key}); 
    
    @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsetsGeometry.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info, color: Colors.blue, size: 40, fontWeight: FontWeight.bold,),
            SizedBox(width: 10,),
            Text("Informacion util"),
          ],
        ),
      ),
    );
  }
}