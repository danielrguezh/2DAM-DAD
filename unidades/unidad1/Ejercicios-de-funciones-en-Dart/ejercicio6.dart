/**
 * 6. Implementa una función operar que reciba dos números y otra función que defina la operación.
 * Haz que se pueda usar con suma, resta, multiplicación y división.
 */
double sumar(double n1, double n2) => n1+n2;
double restar(double n1, double n2) => n1-n2;
double multiplicar(double n1, double n2) => n1*n2;
double dividir(double n1, double n2) => n1/n2;

double operar(double n1, double n2, double Function(double,double) funcion)=> funcion(n1,n2);
void main() {
  double n1=2;
  double n2=2;
  print(operar(n1, n2, sumar));
  print(operar(n1, n2, restar));
  print(operar(n1, n2, multiplicar));
  print(operar(n1, n2, dividir));
}