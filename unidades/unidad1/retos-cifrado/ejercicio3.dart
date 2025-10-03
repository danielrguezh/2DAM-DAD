/**
 * MORSE
 * 📜 Mensaje secreto:	- --- -.-. / - --- -.-. / - --- -.-. --..-- / .--. . -. -. -.--
 *
 * Pistas:	
 * El mensaje se transformó usando el código Morse.
 * - Cada letra es una secuencia de . y -.
 * - Las letras están separadas por espacios.
 * - El símbolo / representa un espacio en blanco.
 * - El --..-- es la coma.
 * 
 * Usa un Map para crear un diccionario morse y otro inverso.
 * Usa el método split() de un String de para devolver una lista de String.
 * Usa el método map() de una List para recorrer la lista.
 * Usa el método join() de un iterable (el que devuelve map) para unir los caracteres en una sola cadena.
 *
 * Tu misión:
 * Programa en Dart un descodificador que transforme el mensaje en texto.
 * Luego responde a la siguiente pregunta:
 * ¿Cuál es el mensaje original?
 * 
 * @author danielrguezh
 * @version 1.0.0
 */


String decodificadorMorse(String codigo) {
  Map<String, String> morse = {
    'A': '.-', 'B': '-...', 'C': '-.-.', 'D': '-..', 'E': '.',
    'F': '..-.', 'G': '--.', 'H': '....', 'I': '..', 'J': '.---',
    'K': '-.-', 'L': '.-..', 'M': '--', 'N': '-.', 'O': '---',
    'P': '.--.', 'Q': '--.-', 'R': '.-.', 'S': '...', 'T': '-',
    'U': '..-', 'V': '...-', 'W': '.--', 'X': '-..-', 'Y': '-.--',
    'Z': '--..', ' ': '/', ',': '--..--'
  };
  Map<String, String> inverso = {for (var e in morse.entries) e.value: e.key};
  return codigo.split(' ').map((e) => inverso[e] ?? '').join();
}

void main() {
  String codigo = '- --- -.-. / - --- -.-. / - --- -.-. --..-- / .--. . -. -. -.--';
  print(decodificadorMorse(codigo));
}