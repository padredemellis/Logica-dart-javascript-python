/*
Imagina que queremos representar una misión simple en tu juego. Crea una clase llamada Mision 📜 que cumpla con estos requisitos:
Debe tener dos atributos: nombre (un texto) y estaCompletada (un booleano).
Ambos atributos deben ser inmutables (no pueden cambiar después de ser creados).
Crea un constructor que reciba ambos valores como obligatorios.
¿Cómo escribirías el código para esa clase Mision?
Añade el método copyWith a tu clase Mision. Debe permitir actualizar tanto el nombre como el estado estaCompletada.
----------------------------------------------------------
Modifica el método copywith para que use parámetros nombrados.
Añade un tercer campo inmutable: final int recompensa.

*/
import 'estado_mision.dart';

class Mision {
  final String nombre;
  final EstadoMision estado;
  final int recompensa;

  Mision({required this.nombre, required this.estado, required this.recompensa});

  Mision copyWith({String? nombre, EstadoMision? estado, int? recompensa}) {
    return Mision(
      nombre: nombre ?? this.nombre,
      estado: estado ?? this.estado,
      recompensa: recompensa ?? this.recompensa
    );
  }
}
