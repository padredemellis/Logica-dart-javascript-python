/*
Tu reto:
Escribe el código para simular que el jugador ha comenzado la misión. Debes hacer dos cosas:
Crear una variable llamada misionActualizada que sea una copia de miMision, pero cambiando su estado a EstadoMision.enCurso.
"Anunciar" o enviar esa misionActualizada a través del controlador para que la tubería transporte el cambio.
¿Cómo escribirías esas dos líneas de código? ✍️
*/
// 1. El estado inicial
import 'dart:async';

import 'estado_mision.dart';
import 'mision.dart';

Mision miMision = Mision(
  nombre: "Recuperar el libro",
  estado: EstadoMision.disponible,
  recompensa: 100,
);

// 2. La tubería (el controlador)
final controlador = StreamController<Mision>();
Mision misionActualizada = miMision.copyWith(
  estado: EstadoMision.enCurso,
); //creo una nueva version de la realidad
void emit() => controlador.add(
  misionActualizada,
); //emito la version a través del controlador

Mision missionFinalizada = misionActualizada.copyWith(
  estado: EstadoMision.finalizado,
  recompensa: misionActualizada.recompensa + 50,
);

void emitFinalized() => controlador.add(missionFinalizada);
