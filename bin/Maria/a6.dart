import 'dart:io';

class SerieFibonacci {
  int limite;

  SerieFibonacci({required this.limite});

  List<int> generarSerie() {
    List<int> serie = [1, 1];
    while (true) {
      int siguiente = serie[serie.length - 1] + serie[serie.length - 2];
      if (siguiente > limite) break;
      serie.add(siguiente);
    }
    return serie;
  }
}

void main() {
  stdout.write('Ingrese el límite máximo (ejemplo: 100): ');
  int limite = int.parse(stdin.readLineSync()!);

  SerieFibonacci fibonacci = SerieFibonacci(limite: limite);

  List<int> resultado = fibonacci.generarSerie();

  print('La serie de Fibonacci hasta $limite es:');
  print(resultado.join(' '));
}
