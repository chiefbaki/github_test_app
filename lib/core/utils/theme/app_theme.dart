import 'package:flutter/material.dart';
import 'package:git_test/core/utils/theme/app_colors.dart';
import 'package:git_test/core/utils/theme/app_fonts.dart';

ThemeData darkTheme() {
  return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(16),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
      ),
      textTheme: textTheme(),
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark());
}

OutlineInputBorder outlineBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.blue),
      borderRadius: BorderRadius.circular(16));
}

ThemeData lightTheme() {
  return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(16),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
      ),
      primaryColor: AppColors.blue,
      textTheme: textTheme(),
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light());
}

TextTheme textTheme() {
  return const TextTheme(
      bodyLarge: AppFonts.s32w600,
      bodyMedium: AppFonts.s24w300,
      titleLarge: AppFonts.s20w600,
      displayLarge: AppFonts.s20w500,
      displayMedium: AppFonts.s14w500,
      displaySmall: AppFonts.s14w400,
      headlineLarge: AppFonts.s16w600,
      headlineMedium: AppFonts.s14w300);
}
