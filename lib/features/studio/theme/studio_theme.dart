library;

import 'package:flutter/material.dart';

import 'studio_colors.dart';

export 'studio_colors.dart';

class StudioTheme {
  StudioTheme._();

  static ThemeData dark() {
    final colorScheme = const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: StudioColors.accent,
      onPrimary: Colors.white,
      secondary: StudioColors.accentSecondary,
      onSecondary: Colors.white,
      error: StudioColors.error,
      onError: Colors.white,
      surface: StudioColors.surface,
      onSurface: StudioColors.textPrimary,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: StudioColors.canvas,
      canvasColor: StudioColors.canvas,
      splashFactory: InkRipple.splashFactory,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      fontFamily: 'SFProDisplay',
      textTheme: _buildTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: StudioColors.surface,
        foregroundColor: StudioColors.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'SFProDisplay',
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: StudioColors.textPrimary,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: StudioColors.surfaceRaised,
        modalBackgroundColor: StudioColors.surfaceRaised,
        modalElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(StudioRadius.xl),
          ),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: StudioColors.separator,
        thickness: 0.5,
        space: 0.5,
      ),
      sliderTheme: const SliderThemeData(
        activeTrackColor: StudioColors.accent,
        inactiveTrackColor: StudioColors.separator,
        thumbColor: Colors.white,
        overlayColor: Color(0x29FF2D55),
        trackHeight: 3,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: StudioColors.surfaceRaised,
        selectedColor: StudioColors.accent,
        labelStyle: const TextStyle(
          fontFamily: 'SFProDisplay',
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: StudioColors.textPrimary,
        ),
        side: const BorderSide(color: StudioColors.separator, width: 0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(StudioRadius.pill),
        ),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: StudioColors.surfaceRaised,
        contentTextStyle: TextStyle(
          fontFamily: 'SFProDisplay',
          fontSize: 14,
          color: StudioColors.textPrimary,
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(StudioRadius.md)),
        ),
      ),
    );
  }

  static TextTheme _buildTextTheme() {
    const base = TextStyle(
      fontFamily: 'SFProDisplay',
      color: StudioColors.textPrimary,
      decorationColor: StudioColors.textPrimary,
    );

    return TextTheme(
      displayLarge: base.copyWith(fontSize: 57, fontWeight: FontWeight.w700, height: 1.1),
      displayMedium: base.copyWith(fontSize: 45, fontWeight: FontWeight.w700, height: 1.1),
      displaySmall: base.copyWith(fontSize: 36, fontWeight: FontWeight.w700, height: 1.15),
      headlineLarge: base.copyWith(fontSize: 32, fontWeight: FontWeight.w600, height: 1.2),
      headlineMedium: base.copyWith(fontSize: 28, fontWeight: FontWeight.w600, height: 1.2),
      headlineSmall: base.copyWith(fontSize: 24, fontWeight: FontWeight.w600, height: 1.25),
      titleLarge: base.copyWith(fontSize: 22, fontWeight: FontWeight.w600, height: 1.3),
      titleMedium: base.copyWith(fontSize: 17, fontWeight: FontWeight.w600, height: 1.3),
      titleSmall: base.copyWith(fontSize: 14, fontWeight: FontWeight.w600, height: 1.3),
      bodyLarge: base.copyWith(fontSize: 17, fontWeight: FontWeight.w400, height: 1.45),
      bodyMedium: base.copyWith(fontSize: 14, fontWeight: FontWeight.w400, height: 1.45),
      bodySmall: base.copyWith(fontSize: 12, fontWeight: FontWeight.w400, height: 1.4),
      labelLarge: base.copyWith(fontSize: 14, fontWeight: FontWeight.w600, height: 1.3),
      labelMedium: base.copyWith(fontSize: 12, fontWeight: FontWeight.w600, height: 1.3),
      labelSmall: base.copyWith(fontSize: 11, fontWeight: FontWeight.w600, height: 1.3),
    );
  }
}
