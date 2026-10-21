import 'dart:io';
import '../bin/contacto.dart';
import '../bin/menu.dart';
import '../bin/agregar_contacto.dart';
import '../bin/ver_contactos.dart';
import '../bin/buscar_contacto.dart';
import '../bin/eliminar_contacto.dart';

void main() {
  List<Contacto> agenda = [];
  bool ejecutando = true;

  while (ejecutando) {
    mostrarMenu();
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarContacto(agenda);
        break;
      case '2':
        verContactos(agenda);
        break;
      case '3':
        buscarContacto(agenda);
        break;
      case '4':
        eliminarContacto(agenda);
        break;
      case '5':
        print('Saliendo de la agenda...');
        ejecutando = false;
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}