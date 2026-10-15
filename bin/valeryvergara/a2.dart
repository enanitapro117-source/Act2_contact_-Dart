import 'dart:io';

// clase que representa a un empleado
class Employee {
  String name;
  double hoursWorked; // horas laboradas en el mes
  double hourlyRate; // tarifa por hora

  // constructor
  Employee({
    required this.name,
    required this.hoursWorked,
    required this.hourlyRate,
  });

  // método para calcular el total devengado
  double calculateTotalEarned() {
    return hoursWorked * hourlyRate;
  }
}

void main() {
  // entradas
  stdout.write('Ingrese el nombre del empleado: ');
  String? nameIn = stdin.readLineSync();

  // validación de la entrada de nombre
  if (nameIn == null || nameIn.trim().isEmpty) {
    stderr.writeln('Error: El nombre no puede estar vacío.');
    return;
  }

  stdout.write('Ingrese las horas laboradas en el mes: ');
  String? hoursIn = stdin.readLineSync();

  // validación de la entrada de horas
  if (hoursIn == null || hoursIn.trim().isEmpty) {
    stderr.writeln('Error: Las horas no pueden estar vacías.');
    return;
  }

  stdout.write('Ingrese la tarifa por hora: ');
  String? rateIn = stdin.readLineSync();

  // validación de la entrada de tarifa
  if (rateIn == null || rateIn.trim().isEmpty) {
    stderr.writeln('Error: La tarifa no puede estar vacía.');
    return;
  }

  // conversión a número (tryParse devuelve null si no es un número válido)
  double? hours = double.tryParse(hoursIn);
  double? rate = double.tryParse(rateIn);

  if (hours == null || rate == null) {
    stderr.writeln('Error: Las horas y la tarifa deben ser números.');
    return;
  }

  // validación de que no sean negativos
  if (hours < 0 || rate < 0) {
    stderr.writeln('Error: Las horas y la tarifa no pueden ser negativas.');
    return;
  }

  Employee employee = Employee(
    name: nameIn.trim(),
    hoursWorked: hours,
    hourlyRate: rate,
  );

  // resultado (planilla)
  print('----- PLANILLA -----');
  print('Nombre del empleado: ${employee.name}');
  print('Horas laboradas: ${employee.hoursWorked}');
  print('Total devengado: \$${employee.calculateTotalEarned()}');
}