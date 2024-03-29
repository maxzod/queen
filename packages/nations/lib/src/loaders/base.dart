import 'dart:async';

import 'package:flutter/material.dart';

/// * loads translation form assets or any source
/// * extend it to build you custom loader if none of the existing
/// * fits your needs
abstract class NationsLoader {
  /// creates a new loader
  const NationsLoader(this.name);

  /// your package name
  /// used to place the translations under it
  /// for the override feature
  final String name;

  ///* loads the data from you files
  FutureOr<Map<String, Object?>> load(Locale locale);
}
