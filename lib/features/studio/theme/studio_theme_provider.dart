import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/studio_theme.dart';

final studioThemeProvider =
    Provider<ThemeData>((ref) => StudioTheme.dark());
