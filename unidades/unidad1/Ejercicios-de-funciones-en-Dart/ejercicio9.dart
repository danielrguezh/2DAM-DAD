/**
 * 9. Crea una función que devuelva otra función (closure).
 * La función devuelta debe multiplicar por un factor fijo el número que reciba.
 * 
 * Ejemplo:
 * var porTres = multiplicador(3);
 * print(porTres(5)); // 15
 */

Function multiplicador(int factor) {
  return (int numero) => numero * factor;
}

void main() {
  var porTres = multiplicador(3);
  print(porTres(5));
}