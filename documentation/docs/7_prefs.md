---
title: Prefs
sidebar_position: 7
---

 ## getStringOrNull 
  - Return `String` by key if exists else return `null`
  ```dart
  String? foo  = Prefs.getStringOrNull('key');
  ```
  ## getStringOr
  
 - Return `String` by key if exists else return `null`

  ```dart
String? foo  = Prefs.getStringOr('key','def');
  ```
### getStringOrEmpty

- Return `String` by key if exists else return `''` (Empty String)
```dart
String? foo  = Prefs.getStringOrEmpty('key');
```

## setString

- Set the value to given key in shared prefs (Empty String)
```dart
String? foo  = Prefs.setString('key','value');
```
## setStringToEmpty

- Set the value to given key to `''` (Empty String)
```dart
String? foo  = Prefs.setString('key','');
```
## getIntOrNull

- Return `int` by key else return `null`
```dart
int? foo  = Prefs.getInt('key');
```
## getIntOr

- Return `int` by key else return `null`
```dart
int? foo  = Prefs.getIntOrNull('key') ?? def;
```
## getIntOrZero

- Return `int` by key else return `0`
```dart
int? foo  = Prefs.getIntOrNull('key') ?? 0;
```

## getBoolOrNull

- Return `bool` by key if exist return True - else False 
```dart
bool? foo  = Prefs.getBoolOrNull('key',true) ;
```
## getBoolOr

- Return `bool` by key if exist - else return the default value
```dart
bool? firstTimeOpen  = Prefs.getBoolOr('key', true ) ;
```
## getBoolOrFalse

- Return `bool` by key if exist return True - else False 
```dart
bool? isFound  = Prefs.getBoolOrFalse('key', false ) ;
```
## getBoolOrTrue

- Return `bool` by key if exist return True - else False 
```dart
bool? isFound  = Prefs.getBoolOrTrue('key', true ) ;
```


## setBool

- Return `bool` by key if exist return True - else False 
```dart
bool? isFound  = Prefs.setBool('key', false ) ;
```

## getMap

- Return  `Map<String,dynamic>` token only key if key nullable retrun empty Map `{}` 
```dart
Future<void> isMap  = Prefs.getMap('key') ;
```
## setMap

- Return Future token only key and map if key nullable retrun empty Map `{}` 
```dart
Future<void> isSetMap  = Prefs.setMap('key','Map<String,dynamic>') ;
```

## clear

- clear the share preferences `Cache`
```dart
Future<void> clearCache  = Prefs.clear() ;
```

## remove

-  Remove specially key frome `Chace` only pass key 

```dart
Future<void> removespecialvalue   = Prefs.remove('key') ;
```

## removeMany

-  Remove list of value from `Chace` just pass key of list 

```dart
Future<void> clearList  = Prefs.removeMany('key') ;
```
## getDateOrNull
- Return `dateTime` by key if exists else return `null`
```dart
Future<void> clearList  = Prefs.getDateOrNull('03:10:2022') ;
```

