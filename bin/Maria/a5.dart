import 'dart:io';

class ConversorTemperatura {
  double celsius;

  ConversorTemperatura({required this.celsius});

  double convertirAFahrenheit() {
    return (celsius * 1.8) + 32;
  }
}

void main() {
  stdout.write('Ingrese la temperatura en grados Celsius: ');
  double celsius = double.parse(stdin.readLineSync()!);

  ConversorTemperatura conversor = ConversorTemperatura(celsius: celsius);

  print('La temperatura en Fahrenheit es: ${conversor.convertirAFahrenheit()} °F');
}
