/**
 * 8. Escribe una función que genere una lista con los cuadrados de los primeros n números enteros.
 * Usa una función flecha (=>).
 */
List<int> generarCuadrados(int n) => List<int>.generate(n, (i) => (i + 1) * (i + 1));

void main() {
  int n = 5;
  List<int> cuadrados = generarCuadrados(n);
  print(cuadrados);
}