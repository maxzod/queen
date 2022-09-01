---
title: themes
sidebar_position: 3
---

# Get Started

queen support multiple themes out of the box in just `TWO` steps

## Config

- inside config folder create theme file `theme.dart`
- extend `QThemeConfig`
- create your own themes list

## booting

inside the `main` function pass the theme config to the `boot` function

```dart
FlutterQueen.boot(themeConfig:AppThemeConfig());
```

# switching between themes

- to switch to the next theme call `QTheme.next()`
- to switch to specific theme by index call `QTheme.updateTo(int)` and pass the index
- to get the current theme call `QTheme.current`
- to get the current index call `QTheme.currentIndex`
