/**
 * 3. Define una función que devuelva el mayor de tres números enteros.
 */
int mayor (int n1, int n2, int n3){
  List<int> numeros =[n1, n2, n3];
  numeros.sort();
  return numeros[numeros.length-1];
}
void main() {
  print(mayor(1, 2, 3));
}