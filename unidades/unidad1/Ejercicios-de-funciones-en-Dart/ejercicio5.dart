/**
 * 5. Escribe una función que muestre en consola un mensaje de presentación
 * con un nombre obligatorio y una edad opcional (si no se da edad, usa 0 por defecto).
 */

String saludo (String nombre, [int? edad]) => "Hola soy $nombre y tengo ${edad ?? 0} años";

void main() {
  print(saludo("Paco"));
  print(saludo("Hernández", 33));
}