---
title: Themes
sidebar_position: 4
---

- [build your themes](#build-your-themes)
  - [boot the theme](#boot-the-theme)
    - [switch to the next theme](#switch-to-the-next-theme)
    - [switch to specific theme by index](#switch-to-specific-theme-by-index)
    - [get current theme](#get-current-theme)
    - [get current theme index](#get-current-theme-index)

## introduction

modern apps must have light and dark theme at least , also might need more than one light/dark theme the ability and make users able to switch between themes with in the app not just stick to the OS choices , persist the chosen theme and use next the the app opens

all of that is ready and more features to boost the theming process

# build your themes

at `config/theme.dart` add your brand themes

```dart
class AppThemeConfig extends ThemeConfig {

  /// * List of available thames
  /// you can add as many themes as you need there is no limit but at least must have one
  @override
  List<QTheme> get themes => [
        QTheme(
          id: 'dark',
          name: 'Dark',
          theme: ThemeData.dark(),
        ),
        QTheme(
          id: 'light',
          name: 'Light',
          theme: ThemeData.light(),
        ),
      ];
}

```

## boot the theme

inside the launchers list do not forgot to add your config file to the Themes

add `ThemeLauncher` to app lunchers list and inside the constructor give it your config object

### switch to the next theme

```dart
AppTheme.next()
```

### switch to specific theme by index

```dart
AppTheme.updateTo(2)
```

### get current theme

```dart
/// without context
AppTheme.current

/// with context

Theme.of(context);


/// with readable package 😉
context.theme

```

### get current theme index

```dart
 AppTheme.currentIndex
```
