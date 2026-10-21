import 'dart:io';
import 'contacto.dart';

void agregarContacto(List<Contacto> agenda) {
  stdout.write('Ingrese el nombre del contacto: ');
  String? nombre = stdin.readLineSync();

  stdout.write('Ingrese el teléfono del contacto: ');
  String? telefono = stdin.readLineSync();

  if (nombre != null &&
      nombre.isNotEmpty &&
      telefono != null &&
      telefono.isNotEmpty) {
    agenda.add(Contacto(nombre, telefono));
    print('¡Contacto agregado exitosamente!');
  } else {
    print('Error: El nombre y el teléfono no pueden estar vacíos.');
  }
}