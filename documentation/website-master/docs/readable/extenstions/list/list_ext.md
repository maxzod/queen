---
title: List
sidebar_position: 1
---

## on `ReadableListX`

### count

```dart
/// alias for `length`
final items =[1,2,3,4];
print(items.count()); // 4
```

### countWithoutNull

```dart
/// return the `length` without `null` elements

final items =[1,2,null,3,null,4,null,null,null,];
print(items.countWithoutNull()); // 4
```

### loop

since forEach does noe support async
now you have it in

```dart
// async for each
Future<void> load()async {

final numbers = [1, 2, 3, 4, 5, 6];
await numbers.loop((e) async{
        await Future.delayed(Duration(seconds: 1));
        print(e);
      });
print('last');
/// the output is
/// 1
/// 2
/// 3
/// 4
/// 5
/// 6
/// lsat
}
```

### withoutDuplicate

```dart
/// * return a new `List` without duplicated `elements`
final items =[1,2,2,4,4];
print(items.withoutDuplicate()); // [1,2,4]
```

### random

return a random element from list

```dart
final items =[1,2,3];
print(items.random); // random item

final empty =[];
/// ! throws `StateError` if list is empty
print(items.random);

```

### firstOr

return first element if list is not empty
else return the default value

```dart
final items =[1,2,3];
print(items.firstOr(5)); // 1
print([].firstOr(5)); // 5
```

### firstOrNull

return the first element if list is not empty
else return null

```dart
final items =[1,2,3];
print(items.firstOrNull()); // 1
print([].firstOrNull()); // null
```

### lastOr

return last element if list is not empty
else return the default value

```dart
final items =[1,2,3];
print(items.lastOr(5)); // 3
print([].lastOr(5)); // 5
```

### lastOrNull

return the last element if list is not empty
else return null

```dart
final items =[1,2,3];
print(items.lastOrNull()); // 3
print([].lastOrNull()); // null
```

### atOr

return element by index
if index si out of range will return the value

```dart
final items =[1,2,3];
print(items.atOr(1,3)); // 2
print([].atOr(1,3)); // 3
```

### atOrNull

return element by index
if index out of range will return null

```dart
final items =[1,2,3];
print(items.atOrNull(1)); // 2
print([].atOrNull(1)); // null
```

### firstWhereOrNull

return the first match
else will return null

```dart
final items =[1,2,3];
print(items.firstWhereOrNull((e) => e % 2 == 0)); // 2
print([].firstWhereOrNull((e) => e % 2 == 0)); // null
```

### mapWithIndex

like `map()` function but now you have the index with the element

```dart
final items =[1,2,3];
print(items.mapWithIndex((index, e) => index)); // [0,1,2]

```

### takeUntil

The takeUntil method returns items in the collection until the given callback returns true
If callback never returns true, the takeUntil method will return all items in the collection.

```dart
final items =[1,2,3];
print(items.takeUntil((e) => e % 2 == 0)); // [2]
print(items.firstWhereOrNull((e) => e * 2 == 0)); // [1,2,3]
```
