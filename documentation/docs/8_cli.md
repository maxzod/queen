---
title: lighthouse(CLI)
sidebar_position: 1
---

# Install the CLI

make sure dart path is in you system environment

```
{flutter-path}\bin\cache\dart-sdk\bin
```

then run the command :

```bash
pub global activate lighthouse
```

now you can use the lighthouse with `lighthouse` or `lh` .

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

# **`localization`**

the `LightHouse` will help you with localization in your project .

## **`tr:make`**

this command will validate your localization assets from `assets/lang` in your project

### benefits

- validation lighthouse will check if you added an empty value or missed a key in any language .
- strong type checking to your translations keys no more key not found 🎁.
- IDE support to see the value of this key in different languages.
  - ![Tr getter](./../assets/snippets/tr_getter.png)

## **`tr:validate`**

this command will validate only your assets and will not generate or update any thing in you project
