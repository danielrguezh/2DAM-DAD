/**
 * ASCII
 * Mensaje secreto: 	
 * 82 118 102 32 109 98 32 103 118 102 115 98 32 117 102 32 98 110 112 106 122 111 98 111 102
 * 
 * Pistas: 	
 * - Cada carácter del mensaje original se convirtió a su código ASCII y luego se le sumó +1.
 * - Usa fromCharCode, Split y map.
 * Tu misión: Programa en Dart un descodificador que reste 1 a cada número y reconstruya el mensaje original.
 * Luego responde a la siguiente pregunta:
 * ¿Cuál es el mensaje original? 
 */
String descocificadorAscii(String cadena) {
  return String.fromCharCodes(
    cadena.split(' ').map((n) => int.parse(n) - 1)
  );
}

void main() {
  String cadena = '82 118 102 32 109 98 32 103 118 102 115 98 32 117 102 32 98 110 112 106 122 111 98 111 102';
  String mensaje = descocificadorAscii(cadena);
  print(mensaje);
}