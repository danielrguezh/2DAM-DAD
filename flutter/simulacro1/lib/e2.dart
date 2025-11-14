import 'package:flutter/material.dart';

void main() {
  runApp(const MyMainWidget());
}

class MyMainWidget extends StatelessWidget {
  const MyMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Imagen circular
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/imagen.jpg"), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Texto superpuesto en una caja
              Align(
                alignment: Alignment(0.6, 0.6),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.black45,
                  child: const Text(
                    "Texto superpuesto",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
