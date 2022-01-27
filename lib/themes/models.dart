import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class QTheme extends Equatable {
  final String id;
  final ThemeData theme;
  final String name;

  const QTheme({
    required this.id,
    required this.theme,
    required this.name,
  });

  @override
  List<Object> get props => [
        name,
        theme,
      ];
}

class ThemeConfig {
  const ThemeConfig();

  /// * List of available thames
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
