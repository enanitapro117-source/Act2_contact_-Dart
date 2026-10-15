import 'dart:io';

// clase que representa un movimiento rectilíneo uniforme (MRU)
class UniformMotion {
  double velocity; // velocidad en m/s
  double time; // tiempo en segundos

  // constructor
  UniformMotion({required this.velocity, required this.time});

  // método para calcular la distancia: D = V * T
  double calculateDistance() {
    return velocity * time;
  }
}

void main() {
  // entradas
  stdout.write('Ingrese la velocidad (m/s): ');
  String? velocityIn = stdin.readLineSync();

  // validación de la entrada de velocidad
  if (velocityIn == null || velocityIn.trim().isEmpty) {
    stderr.writeln('Error: La velocidad no puede estar vacía.');
    return;
  }

  stdout.write('Ingrese el tiempo (s): ');
  String? timeIn = stdin.readLineSync();

  // validación de la entrada de tiempo
  if (timeIn == null || timeIn.trim().isEmpty) {
    stderr.writeln('Error: El tiempo no puede estar vacío.');
    return;
  }

  // conversión a número (tryParse devuelve null si no es un número válido)
  double? velocity = double.tryParse(velocityIn);
  double? time = double.tryParse(timeIn);

  if (velocity == null || time == null) {
    stderr.writeln('Error: Debe ingresar solo números.');
    return;
  }

  UniformMotion motion = UniformMotion(velocity: velocity, time: time);

  // resultado
  print('La distancia recorrida es ${motion.calculateDistance()} metros.');
}