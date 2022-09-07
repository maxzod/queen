---
title: Lunchers
---

# Launchers

Introduction
Launchers are the way queen organize the process of register dependencies and bootstrap for Queen . Your own application, and other developers services, are

Launchers helps to organize two things

## One , register dependencies

In general, we mean registering things, including registering services, controllers, other packages dependencies

```dart

class ThemeLauncher extends Launcher {

  @override
  void register() {
    Locators.put(ThemeService());
  }

}
```

## Two , Boot dependencies

to bootstrap feature like themes , localization ..etc `boot` will be called before the application run

```dart

class ThemeLauncher extends Launcher {

  @override
  FutureOr<void> boot() async => find<ThemeController>().boot();

}


```

## shouldRunInParallel

if `false` the Launcher boot will called after the previous one is done
if `true` will boot in parallel with other Launchers (apps boot faster)

```dart

class ThemeLauncher extends Launcher {

  @override
  bool get shouldRunInParallel => true;

}


```
