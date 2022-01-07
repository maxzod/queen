import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class QTheme extends Equatable {
  final ThemeData theme;
  final String name;

  const QTheme({
    required this.theme,
    required this.name,
  });

  @override
  List<Object> get props => [theme, name];
}
