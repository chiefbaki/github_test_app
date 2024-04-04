import 'package:flutter/material.dart';
import 'package:git_test/core/theme/app_colors.dart';
import 'package:git_test/core/theme/app_fonts.dart';

class CustomTextBtn extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CustomTextBtn(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Text(
          title,
          style: AppFonts.s16w600.copyWith(color: AppColors.white),
        ));
  }
}
