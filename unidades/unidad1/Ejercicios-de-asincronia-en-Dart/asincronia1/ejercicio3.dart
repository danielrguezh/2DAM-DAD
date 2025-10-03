
/**
 * Ejercicio 3: Manejo de errores con catchError
 * Crea una función que devuelva un Future y siempre lance una excepción "Error en la carga".
 * - Llama a la función y maneja el error con .catchError(), imprimiendo "Error atrapado: ...".
 * 
 * @author danielrguezh
 * @version 1.0.0
 */

Future<void> funcionConError() {
  return Future.delayed(Duration(seconds: 1), () {
    throw Exception("Error en la carga");
  });
}

void main() {
  funcionConError()
    .then((_) => print("Carga exitosa"))
    .catchError((error) => print("Error atrapado: $error"));
}