import 'dart:io';

// clase que representa la temperatura de un horno
class OvenTemperature {
  double celsius; // temperatura en grados Celsius

  // constructor
  OvenTemperature({required this.celsius});

  // método para convertir a Fahrenheit: F = (C * 1.8) + 32
  double toFahrenheit() {
    return (celsius * 1.8) + 32;
  }
}

void main() {
  // entradas
  stdout.write('Ingrese la temperatura en grados Celsius: ');
  String? celsiusIn = stdin.readLineSync();

  // validación de la entrada de temperatura
  if (celsiusIn == null || celsiusIn.trim().isEmpty) {
    stderr.writeln('Error: La temperatura no puede estar vacía.');
    return;
  }

  // conversión a número (tryParse devuelve null si no es un número válido)
  double? celsius = double.tryParse(celsiusIn);

  if (celsius == null) {
    stderr.writeln('Error: La temperatura debe ser un número.');
    return;
  }

  OvenTemperature oven = OvenTemperature(celsius: celsius);

  // resultado
  print('${oven.celsius} °C equivalen a ${oven.toFahrenheit()} °F.');
}