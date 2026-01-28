import 'package:flutter/material.dart';

void main() {
  runApp(const MarcadorApp());
}

class MarcadorApp extends StatelessWidget {
  const MarcadorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarcadorPage(),
    );
  }
}

class MarcadorPage extends StatefulWidget {
  const MarcadorPage({super.key});
  
  @override
  State createState() => _MarcadorPageState();
}

class _MarcadorPageState extends State{
  int aPoints = 0;
  int bPoints = 0;
  String noti = 'Empate';

  void changeNoti(){
    if(aPoints==bPoints){
      noti = 'Empate';
    } else if (aPoints>bPoints){
      noti = 'Va ganado: A';
    }else{
      noti = 'Va ganado: B';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marcador dinámico')),
      body: Center(
        child: Column(
        children: [
          Text('Equipo A: ${aPoints}'),
          Text('Equipo B: ${bPoints}'),
          Text(noti),
          ElevatedButton(
            onPressed: () => setState(() {
              aPoints+=1;
              changeNoti();
            }),
            child: Text('+1 A'),
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              bPoints+=1;
              changeNoti();
            }),
            child: Text('+1 B'),
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              aPoints=0;
              bPoints=0;
              changeNoti();
            }),
            child: Text('Reiniciar'),
          ),
        ],
      )
      ),
    );
  }
}