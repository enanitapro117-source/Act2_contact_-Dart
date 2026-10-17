import 'dart:io';
import 'dart:math';

class TrianguloRectangulo {
  double ladoA;
  double ladoB;

  TrianguloRectangulo({required this.ladoA, required this.ladoB});

  double calcularHipotenusa() {
    return sqrt(pow(ladoA, 2) + pow(ladoB, 2));
  }
}

void main() {
  stdout.write('Ingrese el valor del lado a: ');
  double a = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el valor del lado b: ');
  double b = double.parse(stdin.readLineSync()!);

  TrianguloRectangulo triangulo = TrianguloRectangulo(ladoA: a, ladoB: b);

  print('La hipotenusa es: ${triangulo.calcularHipotenusa()}');
}
