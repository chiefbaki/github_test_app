import 'package:flutter/material.dart';
import 'package:git_test/core/utils/theme/app_colors.dart';

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
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColors.white),
        ));
  }
}
