/// Let the people use there languages 💪
library translation;

/// * controller
export 'translations/controller.dart';
export 'translations/extensions/locale.dart';

/// * extensions
export 'translations/extensions/string.dart';
export 'translations/facade.dart';

/// * helpers
export 'translations/helpers/string.dart';
export 'translations/loaders/assets.dart';

/// * loaders
export 'translations/loaders/base.dart';

/// * model
export 'translations/models/config.dart';

/// gender enum
enum Gender {
  /// * male gender
  male,

  /// * female gender
  female,
}
