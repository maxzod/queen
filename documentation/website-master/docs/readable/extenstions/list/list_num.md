---
title: list<num>
sidebar_position: 2
---

## on `List<num>`

## summation

### sumOrNull

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? sum = list.sumOrNull(); // 15

  /// return null if the list is empty
  final emptyList = <num>[];
  final num? sum = emptyList.sumOrNull(); // null

```

### sumOr

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? sum = list.sumOr(10); // 15

  /// return `value` if the list is empty
  final emptyList = <num>[];
  final num? sum = emptyList.sumOr(10); // 10

```

### sumOrZero

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? sum = list.sumOrZero(); // 15

  /// return `0` if the list is empty
  final emptyList = <num>[];
  final num? sum = emptyList.sumOr(); // 0

```

### sum

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? sum = list.sum(); // 15


  final emptyList = <num>[];
   /// ! throws `StateError` if isEmpty
  final num? sum = emptyList.sum();

```

## average

### averageOrNull

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.averageOrNull(); // 3

  /// return null if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.averageOrNull(); // null

```

### averageOr

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.averageOr(10); // 3

  /// return `value` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.averageOr(10); // 10

```

### sumOrZero

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.averageOrZero(); // 3

  /// return `0` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.averageOrZero(); // 0

```

### average

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.average(); // 3


  final emptyList = <num>[];
   /// ! throws `StateError` if isEmpty
  final num? result = emptyList.average();

```

## max

### maxOrNull

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.maxOrNull(); // 5

  /// return null if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.maxOrNull(); // null

```

### maxOr

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.maxOr(5); // 5

  /// return `value` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.maxOr(10); // 10

```

### maxOrZero

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.maxOrZero(); // 5

  /// return `0` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.maxOrZero(); // 0

```

### max

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.max(); // 5


  final emptyList = <num>[];
   /// ! throws `StateError` if isEmpty
  final num? result = emptyList.max();

```

## min

### minOrNull

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.minOrNull(); // 1

  /// return null if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.minOrNull(); // null

```

### minOr

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.minOr(5); // 1

  /// return `value` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.minOr(10); // 10

```

### minOrZero

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.minOrZero(); // 1

  /// return `0` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.minOrZero(); // 0

```

### min

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.min(); // 1


  final emptyList = <num>[];
   /// ! throws `StateError` if isEmpty
  final num? result = emptyList.min();

```
