abstract class QEvent {
  final DateTime createdAt;
  QEvent({
    required this.createdAt,
  });
}

class LogEvent extends QEvent {
  final Object message;
  final StackTrace? stackTrace;

  LogEvent({
    required super.createdAt,
    required this.message,
    this.stackTrace,
  });
}
