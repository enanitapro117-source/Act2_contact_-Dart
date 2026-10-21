import 'dart:io';
import 'contacto.dart';

void eliminarContacto(List<Contacto> agenda) {
  stdout.write('Ingrese el nombre del contacto a eliminar: ');
  String? aEliminar = stdin.readLineSync();

  if (aEliminar != null && aEliminar.isNotEmpty) {
    int inicial = agenda.length;
    agenda.removeWhere(
      (c) => c.nombre.toLowerCase() == aEliminar.toLowerCase(),
    );
    if (agenda.length < inicial) {
      print('Contacto eliminado correctamente.');
    } else {
      print('No se encontró un contacto con ese nombre para eliminar.');
    }
  } else {
    print('Nombre no válido.');
  }
}