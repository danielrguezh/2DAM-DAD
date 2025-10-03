/**
 * Ejercicio 8: Uso de async/await en bucle
 * Crea una lista de 3 URLs simuladas: ["url1", "url2", "url3"].
 * - Por cada URL, espera 1 segundo y luego imprime "Descargada <url>".
 * - Hazlo con un for y await dentro.
 * 
 * @author danielrguezh
 * @version 1.0.0
 */

Future<void> descargar(String url) async {
  await Future.delayed(Duration(seconds: 1));
  print("Descargada $url");
}

void main() async {
  try {
    List<String> urls = ["url1", "url2", "url3"];
    for (String url in urls) {
      await descargar(url);
    }
  } catch (e) {
    print("Error: $e");
  }
}