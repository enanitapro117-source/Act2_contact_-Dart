import 'dart:io';
import 'dart:math';

// clase que representa un triángulo rectángulo
class RightTriangle {
  double sideA; // cateto a
  double sideB; // cateto b

  // constructor
  RightTriangle({required this.sideA, required this.sideB});

  // método para calcular la hipotenusa: H = raíz cuadrada(a2 + b2)
  double calculateHypotenuse() {
    return sqrt(pow(sideA, 2) + pow(sideB, 2));
  }
}

void main() {
  // entradas
  stdout.write('Ingrese el lado a: ');
  String? sideAIn = stdin.readLineSync();

  // validación de la entrada del lado a
  if (sideAIn == null || sideAIn.trim().isEmpty) {
    stderr.writeln('Error: El lado a no puede estar vacío.');
    return;
  }

  stdout.write('Ingrese el lado b: ');
  String? sideBIn = stdin.readLineSync();

  // validación de la entrada del lado b
  if (sideBIn == null || sideBIn.trim().isEmpty) {
    stderr.writeln('Error: El lado b no puede estar vacío.');
    return;
  }

  // conversión a número (tryParse devuelve null si no es un número válido)
  double? sideA = double.tryParse(sideAIn);
  double? sideB = double.tryParse(sideBIn);

  if (sideA == null || sideB == null) {
    stderr.writeln('Error: Los lados deben ser números.');
    return;
  }

  // validación de que los lados sean positivos
  if (sideA <= 0 || sideB <= 0) {
    stderr.writeln('Error: Los lados deben ser mayores que cero.');
    return;
  }

  RightTriangle triangle = RightTriangle(sideA: sideA, sideB: sideB);

  // resultado
  print('La hipotenusa es: ${triangle.calculateHypotenuse()}');
}  