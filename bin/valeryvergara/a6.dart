import 'dart:io'; 
//clase persona
class Person {
  String name;
  int age;

//constructor
  Person({required this.name, required this.age});

//metodo para verificar si es mayor de edad
bool isAdult() {
    return age >= 18;
  }  

}
void main() {

  //entradas 
  stdout.write('ingrese la nombre de la persona: ');
  String? namein = stdin.readLineSync();

  
  //validacion de la entrada de nombre
  if (namein == null || namein.trim().isEmpty) {
    stderr.writeln('Error: El nombre no puede estar vacío.');
    return;
  }

  stdout.write('ingrese la edad de la persona: ');
  String? agein = stdin.readLineSync();

  //validacion de la entrada de edad
  if (agein == null || agein.trim().isEmpty) {
    stderr.writeln('Error: La edad no puede estar vacía.');
    return;
  }


  int age = int.parse(agein);
  Person person = Person(name: namein, age: age);


  //verificacion si es mayor de edad
  if (person.isAdult()) {
    print('${person.name} is an adult.');
  } else {
    print('${person.name} is not an adult.');
  }
}