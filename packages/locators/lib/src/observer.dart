import '../locators.dart';

abstract class LocatorsObserver {
  void onInserted(DependencyManager manager);
  void onRead(DependencyManager manager);
  void onDelete(DependencyManager manager);
}
