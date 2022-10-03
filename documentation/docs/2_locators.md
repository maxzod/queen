---
title: Dependency Management
sidebar_position: 2
---

# Dependency Management

[**`Locators`**](https://pub.dev/pacakges/locators) is a [**`Service Locator`**](https://en.wikipedia.org/wiki/Service_locator_pattern) to register and retrieve you dependencies without `BuildContext` or any thing you only need the `Type` for the object you want and maybe need a tag

```dart
/// register
Locators.put(AuthService());

/// retrieve it
AuthService service = Locators.find<AuthService>();
```

The methods and it's configurable parameters are:

## retrieve dependencies

### find

return object from any register methods

```dart
AuthService service = Locators.find<AuthService>();
```

## register dependencies

### put

create the object now and register it

```dart
Locators.put<FooClass>(FooClass());
```

:::tip use tag if you need to put or find 2 objects of the same type
:::

### putLazy (lazyLoad dependencies)

register a factory to create the object once when it first time needed

```dart
 Locators.putLazy<FooClass>((){
  // this method will not be called until you need a object from `FooClass` and it will be called once
  return FooClass();
 });
```

This is all options you can set when using lazyPut:

### factory

register a factory to create **_NEW_** object every time it is needed

```dart
 Locators.factory<FooClass>((){
  // this method will not be called until you need a object from `FooClass`
  // and it will be called Every time you call Locators.find<FooClass>()
  return FooClass();
 });
```

## delete

To remove an instance/factory from Locators:

```dart
Locators.delete<FooClass>();
```
