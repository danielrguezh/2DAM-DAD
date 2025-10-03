
/**
 * Ejercicio 4: Crea una función Future<int> dividir(int a, int b) que:
 * - Si b == 0, lance una excepción.
 * - Si no, devuelva la división entera.
 * En main, llama a la función con dividir(10, 0) usando async/await y maneja el error con try/catch.
 * 
 * @author danielrguezh
 * @version 1.0.0
 */

Future<int> dividir(int a, int b) {
    if (b == 0) {
        throw Exception("No se puede dividir entre cero");
    }
    return Future.value(a ~/ b);
}

void main() async {
  try {
    int resultado = await dividir(10, 0);
    print("Resultado: $resultado");
  } catch (e) {
    print("Error: $e");
  }
}