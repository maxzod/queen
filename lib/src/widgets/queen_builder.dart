import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

/// * listen and rebuild when
/// - theme changes
/// - locale changes
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
    // * watch theme changes
    QTheme.addListener(
      () => mounted ? setState(() {}) : () {},
    );
    // * watch locale changes
    Nations.addListener(
      () => _forceRebuild(context),
    );
    super.initState();
  }

  void _forceRebuild(BuildContext context) {
    void rebuild(Element element) {
      if (element.debugDoingBuild || element.dirty) return;
      element
        ..markNeedsBuild()
        ..visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  @override
  Widget build(BuildContext context) {
    _forceRebuild(context);
    return widget.builder(context);
  }
}
