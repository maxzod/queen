import '../locators.dart';

abstract class LocatorsObserer {
  void onInserted(DepndancyManager manager);
  void onRead(DepndancyManager manager);
  void onDelete(DepndancyManager manager);
}
