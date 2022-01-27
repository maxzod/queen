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
  _QThemeBuilderState createState() => _QThemeBuilderState();
}

class _QThemeBuilderState extends State<QueenBuilder> {
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

  void _forceRebuild(BuildContext context) {
    void rebuild(Element element) {
      if (element.debugDoingBuild) return;
      element
        ..markNeedsBuild()
        ..visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  @override
  Widget build(BuildContext context) {
    _forceRebuild(context);
    final child = widget.builder(context);
    if (widget.enableDevtools) {
      return MaterialApp(
        theme: kQueenTheme,
        debugShowCheckedModeBanner: false,
        // home: DevToolsView(child: child),
        home: DevToolsView(child: child),
      );
    }
    return child;
  }
}

class DevToolsView extends StatelessWidget {
  final Widget child;
  const DevToolsView({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SafeArea(child: DebugBar()),
        Expanded(child: child),
      ],
    );
  }
}
