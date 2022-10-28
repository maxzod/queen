import 'package:locators/locators.dart';
import 'package:qpipeline/event.dart';
import 'package:qpipeline/listener.dart';

class Listener {
  final listeners = <QListener>[];

  // TODO :: add lazy on
  // onLazy<QEvent>(()=> listener);
  void on<T extends QEvent>(QListener listener) => listeners.add(listener);

  void sink(QEvent event) {
    final list = listeners.where((e) => e.shouldTrigger(event));

    for (final l in list) {
      l.onOccurred(event);
    }
  }

  void remove<T extends QListener>() => listeners.removeWhere((e) => e is T);
}

abstract class Pipes {
  static Listener get instance => Locators.find<Listener>();

  static void on<T extends QEvent>(QListener listener) =>
      instance.on<T>(listener);

  static void sink(QEvent event) => instance.sink(event);
  static void remove<T extends QListener>() => instance.remove<T>();
}
