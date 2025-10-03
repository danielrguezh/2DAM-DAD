/**
 * Ejercicio 6: Future.any con el primero que termine
 * Crea dos funciones:
 * - Una que espere 2 segundos y devuelva "Lenta".
 * - Otra que espere 1 segundo y devuelva "Rápida".
 * En main, usa Future.any para mostrar el primer resultado que llegue.
 * 
 * @author danielrguezh
 * @version 1.0.0
 */
Future<String> lenta() {
  return Future.delayed(Duration(seconds: 2), () => "Lenta");
}

Future<String> rapida() {
  return Future.delayed(Duration(seconds: 1), () => "Rápida");
}

void main() async {
  try {
    String resultado = await Future.any([lenta(), rapida()]);
    print(resultado);
  } catch (e) {
    print("Error: $e");
  }
}