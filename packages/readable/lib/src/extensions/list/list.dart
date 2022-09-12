///
extension RList<T> on List<T?> {
  /// clears the iterable
  /// add all items to the iterable
  void assingAll(Iterable<T> newItems) {
    clear();
    addAll(newItems);
  }

  /// if the list contains `item` will remove it else will add it
  void toggle(T item) => contains(item) ? remove(item) : add(item);
}
