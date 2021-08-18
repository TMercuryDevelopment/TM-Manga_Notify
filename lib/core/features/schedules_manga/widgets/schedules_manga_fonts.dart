import 'package:flutter/material.dart';

import '../../../utils/theme/app_colors.dart';

class ScheduleFonts {
  const ScheduleFonts._();

  static TextStyle get appbarTitle => const TextStyle(
        fontFamily: "SF Pro Display",
        fontSize: 32.0,
        color: Colors.white,
      );
  static TextStyle get title => const TextStyle(
        fontFamily: "SF Pro Display",
        fontSize: 20.0,
        color: Colors.white,
      );
  static TextStyle get subtitle => TextStyle(
        fontFamily: "SF Pro Text",
        fontSize: 12.0,
        fontStyle: FontStyle.italic,
        color: AppColors.auxAlt,
      );
  static TextStyle get popularity => const TextStyle(
        fontFamily: "SF Pro Text",
        fontSize: 14.0,
        color: Colors.white,
      );
  static TextStyle get scheduleDay => const TextStyle(
        fontFamily: "SF Pro Text",
        fontSize: 12.0,
        color: Colors.white,
      );
}
