/**
 * Ejercicio 2: then() encadenados
 * Crea un Future<int> que devuelva el número 5.
 * - Encadena .then() para multiplicarlo por 2.
 * - Encadena otro .then() para sumarle 10.
 * - Imprime el resultado final (20).
 * 
 * @author danielrguezh
 * @version 1.0.0
 */
void main() {
  Future<int>.value(5)
    .then((value) => value * 2)
    .then((value) => value + 10)
    .then((result) => print(result))
    .catchError((error) => print("Error: $error"));
}