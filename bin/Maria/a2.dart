import 'dart:io';

class Automovil {
  double velocidad; // en m/s
  double tiempo;    // en segundos

  Automovil({required this.velocidad, required this.tiempo});

  double calcularDistancia() {
    return velocidad * tiempo;
  }
}

void main() {
  stdout.write('Ingrese la velocidad del automóvil (m/s): ');
  double velocidad = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el tiempo de recorrido (segundos): ');
  double tiempo = double.parse(stdin.readLineSync()!);

  Automovil auto = Automovil(velocidad: velocidad, tiempo: tiempo);

  print('La distancia recorrida es: ${auto.calcularDistancia()} metros');
}
