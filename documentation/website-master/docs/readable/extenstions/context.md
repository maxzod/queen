---
title: BuildContext
sidebar_position: 2
---

## QMediaQueryX on `BuildContext`

### width

```dart
/// Before ::
final width = MediaQuery.of(context).size.width;
/// After ::
final width = context.width;
```

### height

```dart
/// Before ::
final height = MediaQuery.of(context).size.height;
/// After ::
final height = context.height;
```

### aspectRatio

```dart
/// Before ::
final aspectRatio = MediaQuery.of(context).size.aspectRatio;
/// After ::
final aspectRatio = context.aspectRatio;
```

### orientation

```dart
/// Before ::
final orientation = MediaQuery.of(context).orientation;
/// After ::
final orientation = context.orientation;
```

### isLandscape , isPortrait

```dart
/// Before ::
final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
/// After ::
final isLandscape = context.isLandscape;
final isPortrait = context.isPortrait;
```

## QXLocalization

### isRtl , isLtr

```dart
/// Before ::
final isRtl = Directionality.of(this) == TextDirection.rtl;
final isLtr = Directionality.of(this) == TextDirection.ltr;

/// After ::
final isRtl = context.isRtl;
final isLtr = context.isLtr;

```

## QXNavigator

### canPop

```dart
/// Before ::
final canPop = Navigator.of(context).canPop();
/// After ::
final canPop = context.canPop;

```

## QXTextTheme

### bodyText1 , bodyText2

```dart
/// Before ::
final bodyText1 = Theme.of(context).textTheme.bodyText1;
final bodyText2 = Theme.of(context).textTheme.bodyText2;
/// After ::
final bodyText1 = context.bodyText1;
final bodyText2 = context.bodyText2;

```

### button

```dart
/// Before ::
final button = Theme.of(context).textTheme.button;
/// After ::
final button = context.button;

```

### caption

```dart
/// Before ::
final caption = Theme.of(context).textTheme.caption;
/// After ::
final caption = context.caption;

```

### headline1 ,2,3,4,5,6

```dart
/// Before ::
final headline1 = Theme.of(context).textTheme.headline1;
final headline2 = Theme.of(context).textTheme.headline2;
final headline3 = Theme.of(context).textTheme.headline3;
final headline4 = Theme.of(context).textTheme.headline4;
final headline5 = Theme.of(context).textTheme.headline5;
final headline6 = Theme.of(context).textTheme.headline6;

/// After ::
final headline1 = context.headline1;
final headline2 = context.headline2;
final headline3 = context.headline3;
final headline4 = context.headline4;
final headline5 = context.headline5;
final headline6 = context.headline6;

```

### overline

```dart
/// Before ::
final overline = Theme.of(context).textTheme.overline;

/// After ::
final overline = context.overline;
```

### subtitle1 , subtitle2

```dart
/// Before ::
final subtitle1 = Theme.of(context).textTheme.subtitle1;
final subtitle2 = Theme.of(context).textTheme.subtitle2;

/// After ::
final subtitle1 = context.subtitle1;
final subtitle2 = context.subtitle2;
```

## QXTheme

### isDark , isLight

```dart
/// Before ::
final isDark = Theme.of(context).brightness ==  Brightness.dark;
final isLight = Theme.of(context).brightness ==  Brightness.light;

/// After ::
final isDark = context.isDark;
final isLight = context.isLight;
```
