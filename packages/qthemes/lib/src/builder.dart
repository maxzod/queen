import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qthemes/src/provider.dart';
import 'package:queen/queen.dart';

class QThemeBuilder extends ConsumerWidget {
  final Widget Function() builder;
  const QThemeBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(themesProvider.notifier);
    return builder();
  }
}
