---
title: validation
sidebar_position: 2
---

# variable validation

use a function to validate any variable and it will return a `bool` based on the input

```dart
const badEmail = 'QueenRoyal.kingdom';
print(isEmail(badEmail)) // false

const validEmail = 'Queen@Royal.kingdom';
print(isEmail(validEmail)) // true

```

## [list of available functions](https://pub.dev/documentation/queen_validators/latest/queen_validators/queen_validators-library.html#functions)

# Form validation

just like the flutter says to do with forms queen do it in the same way just take the burden of the validation logic from you

- create a from , add the fields , set the roles and you are done

## Validate Forms

```dart
@override
Widget build(BuildContext context) {
return TextFormField(
     // use qValidator function and provider list of rules to apply on this field
    validator: qValidator([
      IsRequired(),
      IsOptional()
      IsEmail(),
      MinLength(8),
      MaxLength(30, "optionally you can override the failure if the validation fails"),
    ]),
  );
  }
```

## [list of available Rules](https://pub.dev/documentation/queen_validators/latest/queen_validators/queen_validators-library.html#classes)

## Localize the rule error message

its localized out of the box

### override the error message

copy the key and override it in any language you want under the package name 'validation'
