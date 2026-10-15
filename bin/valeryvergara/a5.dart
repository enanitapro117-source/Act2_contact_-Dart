import 'dart:io';

// clase que representa la serie de Fibonacci
class FibonacciSeries {
  int limit; // valor máximo de la serie

  // constructor
  FibonacciSeries({required this.limit});

  // método para generar la serie hasta un valor menor o igual al límite
  List<int> generateSeries() {
    List<int> series = [];
    int previous = 0;
    int current = 1;

    while (current <= limit) {
      series.add(current);
      int next = previous + current;
      previous = current;
      current = next;
    }

    return series;
  }
}

void main() {
  // el enunciado fija el límite en 100, por eso no se pide por teclado
  FibonacciSeries fibonacci = FibonacciSeries(limit: 100);

  List<int> series = fibonacci.generateSeries();

  // resultado
  stdout.writeln('Serie de Fibonacci hasta ${fibonacci.limit}:');
  stdout.writeln(series.join(' '));
}