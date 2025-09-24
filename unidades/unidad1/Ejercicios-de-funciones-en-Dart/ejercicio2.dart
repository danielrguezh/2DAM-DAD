/**
 * 2. Haz una función que muestre un saludo en consola. El saludo debe poder llevar opcionalmente un apellido.
 */
String saludo ([String? apellido]) => "Buenas ${apellido ?? ""}";

void main() {
  print(saludo());
  print(saludo("Hernández"));
}