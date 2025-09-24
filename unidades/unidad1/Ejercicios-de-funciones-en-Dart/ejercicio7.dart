/**
 * 7. Dada una lista de nombres, usa una función anónima
 * dentro de forEach para mostrar cada nombre en mayúsculas.
 */
List<String> nombresMayuscula(List<String> nombres){
  nombres.forEach((nombre) {
    nombre = nombre.toUpperCase();
  });
  return nombres;
}
void main() {
  List<String> nombres= ['alice', 'bob', 'charlie', 'david', 'eve'];
  print(nombresMayuscula(nombres));
}