---
title: Pipes
---

# Introduction

pipes allows you (app developer) or other package developers to push and listen to in app events ,
needs a callback when a pages pushed add a listener or more if needed, needs a callback when theme changes here you go ,
its easy ... and so on

![How Pipes Work](./assets/snippets/how_pipes_work.png)

## `QEvent`

base class for all events

```dart
abstract class ThemeChangedEvent extends QEvent {
   final ThemeData newTheme;

   ThemeChangedEvent(this.newTheme) : super();
}
```

## `QListener`

base class for all listeners

```dart
abstract class ThemeChangesListener extends QListener<ThemeChangedEvent> {
  Future<void> onOccurred(ThemeChangedEvent event){
    print('this will be triggered when a ThemeChangedEvent pushed to the pipes !');
  }
 }
```

## Add new Event to the pipes

```dart
Pipes.sink(ThemeChangedEvent());
```

## register a listener for event

```dart
Pipes.on<ThemeChangedEvent>(ThemeChangesListener());
```

## remove a listener from the pipes

```dart
Pipes.remove<ThemeChangesListener>();
```
