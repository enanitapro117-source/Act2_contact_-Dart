import 'dart:io';

class Empleado {
  String nombre;
  int horasTrabajadas;
  double tarifaPorHora;

  Empleado({
    required this.nombre,
    required this.horasTrabajadas,
    required this.tarifaPorHora,
  });

  double calcularDevengado() {
    return horasTrabajadas * tarifaPorHora;
  }

  void imprimirPlanilla() {
    print('--- Planilla del Empleado ---');
    print('Nombre: $nombre');
    print('Horas trabajadas: $horasTrabajadas');
    print('Total devengado: \$${calcularDevengado()}');
  }
}

void main() {
  stdout.write('Ingrese el nombre del empleado: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese la cantidad de horas trabajadas en el mes: ');
  int horas = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la tarifa por hora: ');
  double tarifa = double.parse(stdin.readLineSync()!);

  Empleado empleado = Empleado(
    nombre: nombre,
    horasTrabajadas: horas,
    tarifaPorHora: tarifa,
  );

  empleado.imprimirPlanilla();
}
