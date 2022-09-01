---
title: What , Why and How
sidebar_position: 1
---

## What is `readable`

a collection of helpers and extension methods for dart flutter

## Why use `readable`

### Save time and effort

- no more helpers or extensions scattered in the project .
- helpers already built and ready to be used out of the box .
- you will find many uses cases where `readable` can be helpful

```dart
 /// for flutter

 Widget build(BuildContext context){
    /// Before ::
    final width = MediaQuery.of(context).size.width;
    /// After::
    final width = context.width;


    /// Before ::
    final h1 = Theme.of(context).textTheme.headline1;
    /// After::
    final h1 = context.headline1;

 }
```

```dart
/// for dart
  final data = [1,2,3,4,5];
  final total = data.sum(); // 15

  final minimNumber = data.min(); // 1

  final maximumNumber = data.max(); // 5

  final average = data.average(); // 3
  // ...etc
```

### Readability

- the extensions are built to be easy-to-read and understand .
- it do what it says literally

```dart
  /// BEFORE ::
  final firstUser = users.isEmpty ? null : user.first
  /// AFTER ::
  final firstUser = users.firstOrNull();  /// return the first if the list is not empty else return null

  final dateSTR '10-11-2017';
  /// will convert the string to `DateTime`
  /// is not valid will throw `FormatException`
  final DateTime date = dateStr.toDate();

  /// will convert the string to `DateTime` if the string is not valid will return null
  final DateTime? date = dateStr.toDateOrNull();

  /// if cant convert will return otherDate value
  final DateTime date = dateStr.toDateOr(otherDate);

  /// if cant convert will return now
  final DateTime date = dateStr.toDateOrNow();

  /// ...etc
```

### Stable

unlike other helpers you build in different projects most likely will not test and maintain them ,
BUT `readable` comes with 100% test coverage .

## how to use them

readable is part of queen you already have readable ready out of the box in any file that imports queen

```dart
import 'package:queen/queen.dart`;
```

Example ::

```dart
Widget build(BuildContext context){
  /// replace the shortcut with any from below
  final result = context.shortcut;
  /// not just `BuildContext` you can use it with any other data type
  final numbers = [1,2,3,4,5];

  final average = numbers.average(); // 3

 }
```
