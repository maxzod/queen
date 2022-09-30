class LauncherIsNotReady implements Exception {
  final Type launcherType;

  LauncherIsNotReady(this.launcherType);

  @override
  String toString() => '''
   launcher $launcherType is not ready
   make sure to 
    - register it in the launchers list
    - make sure to wait until it booted then use it
''';
}
