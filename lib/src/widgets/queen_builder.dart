import 'package:flutter/material.dart';
import 'package:queen/themes.dart';

/// * queen theme builder
class QueenBuilder extends StatefulWidget {
  /// the app builder
  final WidgetBuilder builder;

  /// takes builder to calls every time theme changes
  const QueenBuilder({Key? key, required this.builder}) : super(key: key);

  @override
  _QThemeBuilderState createState() => _QThemeBuilderState();
}

class _QThemeBuilderState extends State<QueenBuilder> {
  @override
  void initState() {
    QTheme.addListener(() {
      if (mounted) setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.builder(context);
}
