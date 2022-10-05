import 'package:flutter/material.dart';
import 'package:locators/locators.dart';
import 'package:nations/nations.dart';

/// * listen and rebuild when locale changes

class LangBuilder extends StatefulWidget {
  /// the app builder
  final WidgetBuilder builder;
  const LangBuilder({
    super.key,
    required this.builder,
  });

  @override
  State<LangBuilder> createState() => _LangBuilderState();
}

class _LangBuilderState extends State<LangBuilder> {
  late VoidCallback _changeListener;
  @override
  void initState() {
    _changeListener = () => mounted ? setState(() {}) : () {};
    // * watch locale changes
    find<TransNotifier>().addListener(_changeListener);
    super.initState();
  }

  @override
  void dispose() {
    find<TransNotifier>().removeListener(_changeListener);
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
