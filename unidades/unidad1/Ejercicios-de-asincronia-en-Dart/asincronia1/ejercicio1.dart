/**
 * Ejercicio 1: Future básico con retraso
 * Crea una función Future<String> holaFuture() que:
 * - Espere 2 segundos con Future.delayed.
 * - Devuelva el texto "Hola desde el futuro".
 * En main, llama a esa función usando async/await e imprime el resultado.
 * 
 * @author danielrguezh
 * @version 1.0.0
 */

Future<String> holaFuture() {
    return Future.delayed(Duration(seconds: 2), () => "Hola desde el futuro");
}

void main() async {
  try {
    String mensaje = await holaFuture();
    print(mensaje);
  } catch (e) {
    print("Error: $e");
  }
}