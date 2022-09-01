---
title: LH - assets
sidebar_position: 2
---

# **`assets`**

the `LightHouse` will help you working with `assets` in your project .

## `assets:add`

no more forgotten paths in `pubspec.yaml`

use the command `assets:add` to add all files inside `assets` folder to pubspec.yaml

### Notes

- this will skip files that starts with `.` aka hidden files
- this will remove previously added paths to assets tag in `pubspec.yaml`

## `assets:make`

no more wrong paths or paths that cant be used in the app

writing the path directly in the widget could create some problems

- the path is not valid might be wrong or not exist
- might use a path and you forgot to add it to `pubspec.yaml`

use the command `assets:make` to make a `Dart` class to help you work with it to provider

- auto-complete
- strong type to the path
- `Deprecated` warnings to tell you that you are using bad path

**BEFORE ::**

```dart
Image.assets('assets/photos/dark_logo.png)
```

**AFTER ::**

```dart
Image.assets(Assets.photos.darkLogo)
```
