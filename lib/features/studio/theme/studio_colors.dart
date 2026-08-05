library;

import 'package:flutter/material.dart';

class StudioColors {
  StudioColors._();

  static const Color canvas = Color(0xFF000000);
  static const Color surface = Color(0xFF0A0A0B);
  static const Color surfaceRaised = Color(0xFF161618);
  static const Color separator = Color(0xFF2A2A2E);

  static const Color textPrimary = Color(0xFFFAFAFA);
  static const Color textSecondary = Color(0xFFB0B0B5);
  static const Color textTertiary = Color(0xFF6E6E73);

  static const Color accent = Color(0xFFFF2D55);
  static const Color accentSecondary = Color(0xFFA855F7);
  static const Color accentTertiary = Color(0xFF34C759);
  static const Color warning = Color(0xFFFF9500);
  static const Color error = Color(0xFFFF453A);

  static const Color trackVideo = Color(0xFF0A84FF);
  static const Color trackAudio = Color(0xFF30D158);
  static const Color trackText = Color(0xFFFFD60A);
  static const Color trackSticker = Color(0xFFBF5AF2);
  static const Color trackEffect = Color(0xFFFF375F);
  static const Color trackImage = Color(0xFF64D2FF);

  static const List<Color> accentGradient = [
    Color(0xFFFF2D55),
    Color(0xFFFF375F),
    Color(0xFFA855F7),
  ];

  static const List<Color> storyGradient = [
    Color(0xFFFF2D55),
    Color(0xFFA855F7),
    Color(0xFF007AFF),
  ];
}

class StudioSpacing {
  StudioSpacing._();
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double xxl = 32;
  static const double xxxl = 48;
}

class StudioRadius {
  StudioRadius._();
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double pill = 999;
}
