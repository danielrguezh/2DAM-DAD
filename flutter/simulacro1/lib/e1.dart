import 'package:flutter/material.dart';

void main() {
  runApp(const MyMainWidget());
}

// -------------------------------------------------------------
//                WIDGET PERSONALIZADO
// -------------------------------------------------------------
class MyTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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

// -------------------------------------------------------------
//                WIDGET PRINCIPAL
// -------------------------------------------------------------
class MyMainWidget extends StatelessWidget {
  const MyMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 450),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                MyTextField(
                  hintText: "Nombre",
                  icon: Icons.lock,
                ),
                SizedBox(height: 20),
                MyTextField(
                  hintText: "Email",
                  icon: Icons.lock,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
