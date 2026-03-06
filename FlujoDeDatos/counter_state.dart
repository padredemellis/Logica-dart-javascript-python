// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

class CounterState {
  ///Sistema donde existe un estado inmutable
  final int count;

  CounterState({required this.count});

  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }
}

class CounterEngine {
  ///Motor que maneja el estado inmutable
  CounterState _state =  CounterState(count: 0);
  final StreamController<CounterState> _controller = StreamController<CounterState>.broadcast();
  Stream<CounterState> get stream => _controller.stream;

    void increment() {
    _state = _state.copyWith(count: _state.count + 1);
    _controller.add(_state);
  }

  void dispose() {
    _controller.close();
  }
}

void main() {
  final engine = CounterEngine();

  engine.stream.listen((state) {
    print("Count actual: ${state.count}");
  });

  engine.increment();
  engine.increment();
  engine.increment();
  engine.dispose();
}
