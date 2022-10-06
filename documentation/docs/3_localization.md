---
title: Localization
sidebar_position: 3
---

- [Translation Loaders](#translation-loaders)
- [translate your assets](#translate-your-assets)
- [translations](#translations)
  - [String](#string)
  - [Gender](#gender)
  - [Arguments](#arguments)
  - [Pluralization](#pluralization)
  - [numbers](#numbers)
- [Config](#config)
- [options](#options)
  - [baseLoader](#baseloader)
  - [loaders](#loaders)
  - [firstTimeLocale](#firsttimelocale)
  - [fallbackLocale](#fallbacklocale)
  - [supportedLocales](#supportedlocales)
  - [defaultGender](#defaultgender)
  - [not found family](#not-found-family)
- [Packages localization](#packages-localization)
  - [localize your Package](#localize-your-package)
  - [use package localization](#use-package-localization)
  - [override localization](#override-localization)
    - [override the pre built assets](#override-the-pre-built-assets)
    - [override a package](#override-a-package)
- [Helpers](#helpers)

## Introduction

Queen support localization out of the box with all localization feature you will need . but we will go through the process step by step from the scratch to remove in miss understanding

the localization features in queen are all inside a package called `nations`

## Assets

your app needs the translated assets to use within the app and we support different source for the assets if you have another source you can build yours assets loader by extending `NationsLoader` class and build your custom loader

you also can use more than one loader at the same time ,we will talk about why you might need it i a few seconds

## local json assets

if you have your assets as `json` files and just want to use them , place them inside `assets/lang` directory and make the language name is the file name

for example

```
assets\
        lang\
                ar.json
                en.json
                fr.json
```

and queen will load them for you , you don't need to worry about any loaders if so

## multiple loaders at the same time

`nations` support multiple loaders for your assets to open the door for awesome features like the below

### `nation_assets` loader

this loader have commonly use assets already translated to more then 5 languages and ready to use
those words are detected by the `lighthouse` CLI and you can add/remove them from your app by add/remove the loader from your config file only

# Translation Loaders

by default nations load assets from `assets/lang` and it is the recommended way to do so,
but you can also load assets from anywhere you want maybe `API` or `Database` or any data Source look below to know how to use custom loader

by extending `NationsLoader` class and impalement your own `load(Locale locale)` function
then set these loader as baseLoader in your config file

# translate your assets

# translations

## String

use the `.tr` extension to translate a string

```dart
 'welcome'.tr
```

## Gender

```dart
   /// * male translation
  'person'.trMale
   /// * female translation
  'person'.trFemale
   /// * default gender translation
  'person'.gender
```

## Arguments

```json
"max_length_is":"max length is :count"
```

and in your code

```dart
final msg = 'max_length_is'.args({"count":255});
```

## Pluralization

```dart
  'key'.plural(count,args)
```

## numbers

```dart
'123'.toLocale()
```

wil convert numbers to the current locale format

# Config

contains your localization configurations and will be used by queen , override any option you want to fit your need

# options

## baseLoader

loads the app translations the default is to load assets form `assets/lang` directory as described at [local json assets](#local-json-assets)

## loaders

list your other loaders

:::note

why don't add the `baseLoaders` to the loaders list ?

because the base loader will be used last one to override any key form any other loader if need so your assets get the priority see [](#override-localization)

:::

## firstTimeLocale

the locale to use when your app first time open by defaults it is the `os` locale

## fallbackLocale

if the firstTimeLocale is not supported in your assets queen will use the fallbackLocale as the first time locale
so make sure the fall back locale is always supported

## supportedLocales

list your app supported locales

## defaultGender

to be used every time you call `'some_key'.gender` instead of placing if else every time you use it , it will be written once in the config file

## not found family

if you are trying to translate a key and that key does not exists in your assets it would be a problem since we cant return `String?`
there must be an actual String value
the default behavior is to return a String contains `'null'` in the debugging and return the actual key in production

and you override that behavior by overriding this functions

- **notFound** will be called if the modifier function is not overridden or if the modifier is `.tr`
- **notFoundPlural**
- **notFoundArgs**
- **notFoundGender**

# Packages localization

## localize your Package

- add your package translation in `assets/lang` inside your package root folder
- build a loader to load your package with its very simple build a loader to load your package with `loadPackageTranslation` function
- **when you are using the translation extension add you package name concatenated with `"."` to your key**
- export your loader

## use package localization

- add the package loader to `loader` list in `lib/config/lang.dart` file

## override localization

### override the pre built assets

in `assets/lang/${lang}.json` add the the keys you want to override and queen will use the new value from your assets

### override a package

same as above but add the key inside the package name

example :

```json
"package_name":{
   "some_key" :"new value for this key"
}
```

# Helpers

- `capitalizeFirstChar(String)` to make the first word capital
- `capitalizeEachWord` to make every word capital in one line more entire paragraph
- `numberToLocale(String,[Locale?])` localize numbers based on locale
