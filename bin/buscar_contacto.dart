import 'dart:io';
import 'contacto.dart';

void buscarContacto(List<Contacto> agenda) {
  stdout.write('Ingrese el nombre a buscar: ');
  String? busqueda = stdin.readLineSync();

  if (busqueda != null && busqueda.isNotEmpty) {
    var encontrados = agenda
        .where((c) => c.nombre.toLowerCase().contains(busqueda.toLowerCase()))
        .toList();
    if (encontrados.isEmpty) {
      print('No se encontró ningún contacto con ese nombre.');
    } else {
      print('\n--- Contactos Encontrados ---');
      for (var c in encontrados) {
        print('Nombre: ${c.nombre} - Teléfono: ${c.telefono}');
      }
    }
  } else {
    print('Debe ingresar un término de búsqueda válido.');
  }
}