/**
 * Ejercicio 7: finally con async/await
 * Crea una función Future<void> cargarArchivo() que espere 1 segundo y luego lance una excepción "Archivo no encontrado".
 * - En main, llama a la función dentro de un bloque try/catch/finally.
 * - El finally debe imprimir "Proceso terminado", ocurra o no error.
 * 
 * @author danielrguezh
 * @version 1.0.0
 */

Future<void> cargarArchivo() {
  return Future.delayed(Duration(seconds: 1), () {
    throw Exception("Archivo no encontrado");
  });
}

void main() async {
  try {
    await cargarArchivo();
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Proceso terminado");
  }
}