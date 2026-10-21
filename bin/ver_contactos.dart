import 'contacto.dart';

void verContactos(List<Contacto> agenda) {
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
}