import 'package:qpipeline/event.dart';

// TODO :: add lifecycle
abstract class QListener<T extends QEvent> {
  bool shouldTrigger(QEvent e) => e is T;

  Future<void> onOccurred(T event);
}
