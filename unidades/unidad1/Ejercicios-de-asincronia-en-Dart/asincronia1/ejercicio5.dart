/**
 * Ejercicio 5: Esperar múltiples futuros con Future.wait
 * Crea tres funciones:
 * - Future<String> tarea1() que espere 1s y devuelva "Tarea 1".
 * - Future<String> tarea2() que espere 2s y devuelva "Tarea 2".
 * - Future<String> tarea3() que espere 3s y devuelva "Tarea 3".
 * En main, espera a que terminen todas usando Future.wait y muestra la lista de resultados.
 * 
 * @author danielrguezh
 * @version 1.0.0
 */

Future<String> tarea1() {
  return Future.delayed(Duration(seconds: 1), () => "Tarea 1");
}

Future<String> tarea2() {
  return Future.delayed(Duration(seconds: 2), () => "Tarea 2");
}

Future<String> tarea3() {
  return Future.delayed(Duration(seconds: 3), () => "Tarea 3");
}

void main() async {
  try {
    List<String> resultados = await Future.wait([tarea1(), tarea2(), tarea3()]);
    print(resultados);
  } catch (e) {
    print("Error: $e");
  }
}
