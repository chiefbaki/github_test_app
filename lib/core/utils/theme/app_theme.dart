import 'package:flutter/material.dart';
import 'package:git_test/core/utils/theme/app_colors.dart';
import 'package:git_test/core/utils/theme/app_fonts.dart';

ThemeData darkTheme() {
  return ThemeData(
      textTheme: const TextTheme(
          bodyLarge: AppFonts.s32w600,
          bodyMedium: AppFonts.s24w300,
          titleLarge: AppFonts.s20w600,
          displayLarge: AppFonts.s20w500,
          displayMedium: AppFonts.s14w500,
          displaySmall: AppFonts.s14w400,
          headlineLarge: AppFonts.s16w600,
          headlineMedium: AppFonts.s14w300),
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark());
}

ThemeData lightTheme() {
  return ThemeData(
    primaryColor: AppColors.blue,
      textTheme: const TextTheme(
          bodyLarge: AppFonts.s32w600,
          bodyMedium: AppFonts.s24w300,
          titleLarge: AppFonts.s20w600,
          displayLarge: AppFonts.s20w500,
          displayMedium: AppFonts.s14w500,
          displaySmall: AppFonts.s14w400,
          headlineLarge: AppFonts.s16w600,
          headlineMedium: AppFonts.s14w300),
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light());
}

