/**
 * @author danielrguezh
 * @version 1.0.0
 */

/**
 * 1) List – Lista de notas
 * Crea una lista con las notas de 5 alumnos.
 *     Añade una nueva nota al final.
 *     Muestra la primera y la última nota.
 *     Calcula la media de todas las notas.
 * Usa first, last, reduce y length.
 */
void mostrarNotas(List<int>notas, [int? nota]){
  if (nota !=null){
    notas.add(nota);
  }
  print('Notas = ${notas}');
  print('Primera = ${notas.first}');
  print('Ultima = ${notas.last}');
  double media=notas.reduce((value, element) => value + element,) / notas.length;
  print('Media = ${media}');
}

/**
 * 2) Set – Correos únicos
 * Crea un conjunto (Set) con correos electrónicos:
 * ["ana@mail.com", "luis@mail.com", "ana@mail.com", "pedro@mail.com"]
 *     Imprime el conjunto para comprobar que no hay duplicados.
 *     Añade un correo nuevo.
 *     Comprueba si "luis@mail.com" está en el set.
 * Usa add y contains.
 */
bool agregarCorreos(Set<String> correos, String correo){
  print(correos);
  if(correos.contains(correo)){
    print("El correo ya se encuentra presente");
    return false;
  }
  return correos.add(correo);
}

/**
 * 3) Map – Diccionario de productos
 * Crea un mapa (Map) donde las claves sean nombres de productos y los valores sean sus precios:
 * {"pan": 1.0, "leche": 1.5, "huevos": 2.0}
 *     Muestra el precio de la leche.
 *     Añade "café": 3.0.
 *     Recorre el mapa e imprime "producto → precio".
 * Usa forEach.
 */
void mostrarPrecioProducto(Map<String, double> productos, String producto){
  if(productos.containsKey(producto)){
    print(productos[productos]);
  }
}
bool agregarProductos(Map<String, double> productos, String producto, double precio){
  if(productos.containsKey(producto)){
    return false;
  }
  productos[producto] = precio;
  return true;
}

void mostrarProductos(Map<String, double> productos){
  productos.forEach((producto, precio) => print('Producto: ${producto}, Precio: ${precio}'));
}

/**
 * 4) Queue – Cola de tareas
 * Usa una cola (Queue) para representar tareas pendientes:
 *     Empieza con ["Lavar platos", "Hacer compra", "Estudiar"].
 *     Atiende (quita) la primera tarea y muéstrala.
 *     Añade una nueva tarea "Pasear perro".
 *     Muestra todas las tareas restantes.
 * Usa addAll y removeFirst.
 */


/**
 * 5) SplayTreeSet – Números ordenados
 * Crea un SplayTreeSet de enteros.
 *     Añade los números 5, 3, 9, 1, 4.
 *     Imprime el conjunto y verifica que están ordenados automáticamente.
 *     Elimina el número 3.
 *     Imprime el conjunto final.
 * Usa addAll y remove.
 */

void main(){
  print("-----Ejercicio1-----");
  List<int>notas=[1,2,3,4,5];
  int nota=6;
  mostrarNotas(notas,nota);
  print("-----Ejercicio2-----");
  Set<String> correos ={"ana@mail.com", "luis@mail.com", "ana@mail.com", "pedro@mail.com"};
  String correo = "luis@mail.com";
  print(correos);
  agregarCorreos(correos, correo);
  print(correos);
  print("-----Ejercicio3-----");

  print("-----Ejercicio4-----");
  print("-----Ejercicio5-----");
}