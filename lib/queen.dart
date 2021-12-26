library queen;

import 'package:nations/nations.dart';
import 'package:queen/controllers/controller.dart';

import 'config/config.dart';

export 'package:flutter_readable/flutter_readable.dart';
export 'package:nations/nations.dart';
export 'package:queen_validators/queen_validators.dart';

export 'config/config.dart';
export 'controllers/controller.dart';
export 'src/widgets/queen_builder.dart';

/// * extensions

class Queen {
  Queen._();

  /// boots localization and theme
  static Future<void> boot({
    NationsConfig? nationsConfig,
    QThemeConfig? themeConfig,
  }) async {
    /// set url strategy

    await Nations.boot(nationsConfig);
    await QTheme.boot(themeConfig);
  }
}
