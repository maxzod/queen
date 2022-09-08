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
  
 - Return `String` by key if exists else return default value

  ```dart
String? foo  = Prefs.getStringOr('key','def');
  ```
### getStringOrEmpty

- Return `String` by key if exists else return `''` (Empty String)
```dart
String foo  = Prefs.getStringOrEmpty('key');
```

## setString

- Set the value to given key in shared prefs 
```dart
Prefs.setString('key','value');
```
## setStringToEmpty

- Set the value to given key to `''` (Empty String)
```dart
Prefs.setStringToEmpty('key');
```
## getIntOrNull

- Return `int` by key else return `null`
```dart
int? foo  = Prefs.getIntOrNull('key');
```
## getIntOr

- Return `int` by key else return default value`
```dart
int foo  = Prefs.getIntOr('key',def) ;
```
## getIntOrZero

- Return `int` by key else return `0`
```dart
int foo  = Prefs.getIntOrZero('key') ;
```

## getBoolOrNull

- Return `bool` by key if exist else return `null` 
```dart
bool? foo  = Prefs.getBoolOrNull('key') ;
```
## getBoolOr

- Return `bool` by key if exist - else return the default value
```dart
bool firstTimeOpen  = Prefs.getBoolOr('key', true ) ;
```
## getBoolOrFalse

- Return `bool` by key if exist else return False  
```dart
bool isFound  = Prefs.getBoolOrFalse('key') ;
```
## getBoolOrTrue

- Return `bool` by key if exist else return True 
```dart
bool isFound  = Prefs.getBoolOrTrue('key' ) ;
```


## setBool

- Set the value => True or False to given key in shared prefs  
```dart
 Prefs.setBool(key, value);
```

## getMap

-  Return Map by given key or value
```dart
 Map<String, dynamic> isMap  = Prefs.getMap('key') ;
```
## setMap

- Set value of map by given key & own map 
```dart
Prefs.setMap('key',{}) ;
```

## clear

- clear the share preferences 
```dart
 Prefs.clear() ;
```

## remove

-  Remove specially key from sheared preferences 

```dart
Prefs.remove('key') ;
```

## removeMany

-  Remove list of value from sheared preferences just pass key of list 

```dart
 Prefs.removeMany(["key","foo","rQueen"]) ;
```
## getDateOrNull
- Return `dateTime` by key if exists else return `null`
```dart
DateTime? date =Prefs.getDateOrNull('key') ;
```

## getDateOrNow
- Return `dateTime` by key if exists else return current date
```dart
DateTime? date =Prefs.getDateOrNull('key') ;
```
## setDate
- Set data time by given key & value => from data time  
```dart
Prefs.setDate('key',dateTime) ;
```

## find
- get value without preferences the data types by given key 
```dart
Prefs.find('key') ;
```