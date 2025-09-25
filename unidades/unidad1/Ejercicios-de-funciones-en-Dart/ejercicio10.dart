/**
 * 10. Simula el comportamiento de un botón:
 * 
 * - Declara una función onPressed que recibe un callback sin parámetros y lo ejecuta.
 * - Llama a esa función pasándole una función anónima que imprima en consola "Botón pulsado".
 */
void onPressed(void Function() callback) {
  callback();
}

void main() {
  onPressed(() {
    print("Boton pulsado");
  });
}