---
title: Themes
sidebar_position: 4
---

## introduction

with `qthmes` you can support in app themes with :

- automatic reload not state management needed 🔥
- support multiples themes (not just one dark and other is light but as many themes as you need) 🎨
- switch between them in the run time 🔁
- automatic persistance to last picked theme 💾
- support for (`debugbar`) soon 🛠
- access theme with or without context both recreance to same object

## Get Started

### Config

- inside config folder create theme file `theme.dart`
- extend `QThemeConfig`
- override `themes` field and add your own themes list

### booting

add `QThemeLauncher` to app lunchers list and inside the constructor give it your config

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
