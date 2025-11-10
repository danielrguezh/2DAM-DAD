import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Flutter',
      home: BotonFavorito(),
    );
  }
}

class controlVolumen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final volumen = context.watch<VolumenProvider>().volumen;
    final provider = context.read<VolumenProvider>();

    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo StatefulWidget')),
      body: Center(child: 
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Volumen: $volumen' style: TextStyle(fontSize: 18),),
          Slider(
            value: volumen,
            min: 0,
            max: 100,
            onChanged: (nuevoValor) => provider.volumen,
          ),
          SizedBox(height: 20),
          Icon(if (volumen == 0) {Icons.volumen} size: 100, color: Colors.blueAccent),
        ],
      )),
    );
  }
  
}

class VolumenProvider extends ChangeNotifier{
  double _volumen = 50.0;
  
  get volumen => _volumen;
  set volumen(double nuevoVolumen){
    _volumen = nuevoVolumen;
  notifyListeners();
  }
}

// 🔹 Widget con estado
class BotonFavorito extends StatefulWidget {
  @override
  _BotonFavoritoState createState() => _BotonFavoritoState();
  // También válido: State<MiWidgetConEstado> createState() => _MiWidgetConEstadoState();
}

// 🔹 Clase de estado asociada al widget
class _BotonFavoritoState extends State<BotonFavorito> {
  bool esFavorito = false;

  _toggleFavorito(){
          return IconButton(
            onPressed: () {
              setState(() {
                esFavorito = !esFavorito;
              });
           },
           icon: 
           Icon(
            esFavorito ? Icons.favorite : Icons.favorite_border,
            color: esFavorito ? Colors.red : Colors.grey,
            size: 100,

           ),
          );
          
          
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo StatefulWidget')),
      body: Center(child: 
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            _toggleFavorito(),
            Text(
              esFavorito ? 'Añadido a favoritos': 'Pulsa para marcar como favorito',
              style: TextStyle(fontSize: 18),
            ),
          SizedBox(height: 20,),
          IconButton(
            onPressed: _toggleFavorito,
             icon: Icon(Icons.refresh),
          )  
        ],
      )),
    );
  }
}
