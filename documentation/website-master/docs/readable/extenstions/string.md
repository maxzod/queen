---
title: String
sidebar_position: 3
---

## on `String`

### reversed

revers the string characters

```dart
final name = 'queen';
print(name.reversed); // neeuq
```
### palindrome
 Checks if string is Palindrome

```dart
final name = 'queen';
print(name.isPalindrome); // false
print('queenneeuq'.isPalindrome);//true
```


### capitalizeFirst

Uppercase first letter inside string and let the others lowercase
Example: your name => Your name

```dart
final name = 'queen';
print(name.capitalizeFirst); // Queen
```
### capitalize 

Uppercase first letter inside each word in string
Example: your name => Your Name

```dart
final name = 'flutter queen';
print(name.capitalize); //Flutter Queen
```
### linesCount 

string lines count

```dart
final name = 'flutter queen';
print(name.linesCount); //1
```
### last 

returns last symbol of string or empty string if `this` is null or empty

```dart
final name = 'flutter queen';
print(name.last); //n
```
### replaceAfter 

Replaces part of string after the first occurrence of given delimiter with the [replacement] string.
If the string does not contain the delimiter, returns [defaultValue] which defaults to the original string.

```dart
final name = 'flutter******';
print(name.replaceAfter('r', '')); //flutter
```
### replaceBefore 

Replaces part of string before the first occurrence of given delimiter with the [replacement] string.
If the string does not contain the delimiter, returns [missingDelimiterValue!] which defaults to the original string.
```dart
final name = 'flutter******';
print(name.replaceBefore('*', '')); //******
```
### anyChar 

Returns `true` if at least one element matches the given [predicate].
the [predicate] should have only one character
```dart
final name = 'flutter queen';
print(name..anyChar((element) => element == 't'); //true
```
