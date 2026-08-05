import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/studio/navigation/studio_router.dart';
import '../features/studio/theme/studio_theme.dart';

/// Root widget for the Creator Studio app.
class CreatorStudioApp extends ConsumerWidget {
  const CreatorStudioApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(studioRouterProvider);
    final theme = ref.watch(studioThemeProvider);

    return MaterialApp.router(
      title: 'Creator Studio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: theme,
      darkTheme: theme,
      routerConfig: router,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
            padding: EdgeInsets.zero,
          ),
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
