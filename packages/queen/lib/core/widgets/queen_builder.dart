import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// * listen and rebuild when
/// - theme changes
/// - locale changes
class QueenBuilder extends StatefulWidget {
  /// the app builder
  final WidgetBuilder builder;

  final bool enableDevtools;

  /// takes builder to calls every time theme changes
  const QueenBuilder({
    Key? key,
    required this.builder,
    this.enableDevtools = kDebugMode,
  }) : super(key: key);

  @override
  QThemeBuilderState createState() => QThemeBuilderState._();
}

class QThemeBuilderState extends State<QueenBuilder> {
  QThemeBuilderState._();
  late VoidCallback _changeListener;
  @override
  void initState() {
    _changeListener = () => mounted ? setState(() {}) : () {};
    // * watch theme changes
    Locators.find<ThemeController>().addListener(_changeListener);
    // * watch locale changes
    Locators.find<TransController>().addListener(_changeListener);
    super.initState();
  }

  @override
  void dispose() {
    Locators.find<ThemeController>().removeListener(_changeListener);
    Locators.find<TransController>().removeListener(_changeListener);
    super.dispose();
  }

  void rebuild(
    Element element,
  ) {
    if (element.debugDoingBuild) return;
    element.markNeedsBuild();
    element.visitChildren(rebuild);
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    (context as Element).visitChildren(rebuild);
    return widget.builder(context);
  }
}
