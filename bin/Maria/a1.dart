import 'dart:io';

//clase persona
class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  bool isAdult() {
    return age >= 18;
  }
}

void main() {

  stdout.write('ingrese el nombre de la persona: ');
  String? namein = stdin.readLineSync();

  if (namein == null || namein.isEmpty) {
    stderr.writeln('Error: El nombre no puede estar vacío.');
    return;
  }

  stdout.write('ingrese la edad de la persona: ');
  String? agein = stdin.readLineSync();

  if (agein == null || agein.isEmpty) {
    stderr.writeln('Error: La edad no puede estar vacía.');
    return;
  }

  int age = int.parse(agein);

  Person person = Person(name: namein, age: age);

  if (person.isAdult()) {
    stdout.writeln('${person.name} es mayor de edad.');
  } else {
    stdout.writeln('${person.name} es menor de edad.');
  }
}
