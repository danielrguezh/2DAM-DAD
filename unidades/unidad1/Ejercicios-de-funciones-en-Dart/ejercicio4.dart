/**
 * 4. Crea una función que reciba una lista de números y devuelva la suma de todos ellos.
 */

int sumaElementos (List<int> numeros){
  int suma=0;
  for (int element in numeros) {
    suma+=element;
  }
  return suma;
}
void main() {
  List<int> numeros = [1,2,3,4,5];
  print(sumaElementos(numeros));
}