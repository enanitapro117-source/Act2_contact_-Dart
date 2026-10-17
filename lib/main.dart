import 'dart:io';

// El Aprendiz 2 definirá los atributos de esta clase
class Contacto {
  String nombre;
  String telefono;
  Contacto(this.nombre, this.telefono);
}

void main() {
  List<Contacto> agenda = [];
  bool ejecutando = true;

  while (ejecutando) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        // TODO: Aprendiz 1 - Implementar lógica para agregar
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
        break;
      case '2':
        // TODO: Aprendiz 2 - Implementar lógica para listar
        if (agenda.isEmpty) {
          print('La agenda está vacía.');
        } else {
          print('\n--- Lista de Contactos ---');
          for (var i = 0; i < agenda.length; i++) {
            print(
              '${i + 1}. Nombre: ${agenda[i].nombre} - Teléfono: ${agenda[i].telefono}',
            );
          }
        }
        break;
      case '3':
        // TODO: Aprendiz 3 - Implementar lógica para buscar
        stdout.write('Ingrese el nombre a buscar: ');
        String? busqueda = stdin.readLineSync();

        if (busqueda != null && busqueda.isNotEmpty) {
          var encontrados = agenda
              .where(
                (c) => c.nombre.toLowerCase().contains(busqueda.toLowerCase()),
              )
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
        break;
      case '4':
        // TODO: Aprendiz 3 - Implementar lógica para eliminar
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
