import 'dart:async';

void main() {
  final controller = StreamController<String>();

  controller.add("Hola");
  controller.add("que haces");
  controller.add("ahí?");

  controller.stream.listen((data) {
    print(data);
  });
}
