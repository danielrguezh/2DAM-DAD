/**
 * 7. Dada una lista de nombres, usa una función anónima
 * dentro de forEach para mostrar cada nombre en mayúsculas.
 */
void nombresMayuscula(List<String> nombres){
  nombres.forEach((nombre) {
    print(nombre.toUpperCase());
  });
}
void main() {
  List<String> nombres= ['alice', 'bob', 'charlie', 'david', 'eve'];
  nombresMayuscula(nombres);
}