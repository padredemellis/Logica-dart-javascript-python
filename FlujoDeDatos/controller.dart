import 'dart:async';

void main() {
  final controller =
      StreamController<
        int
      >(); //El controlador es quien emite los datos, la fuente

  //emitir datos
  controller.add(10); //add emite eventos
  controller.add(20);

  //escuchar datos
  controller.stream.listen((data) {
    // listen se suscribe
    print("Nuevo valor: $data"); // cada evento dispara el callback
  });

  //Tipos de Streams
  /*
  Single-subscription
  Un solo listener

  Broadcast
  Multiples listeners
  StreamController.broadcast();
  */
}
