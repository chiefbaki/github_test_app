import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/utils/theme/app_colors.dart';
import 'package:git_test/core/utils/resources/resources.dart';

class ForkCountBtn extends StatelessWidget {
  final String forkCount;
  const ForkCountBtn({super.key, required this.forkCount});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Row(
          children: [
            Image.asset(
              Images.gitFork,
              color: AppColors.mediumGrey,
              width: 18.w,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              forkCount,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: AppColors.mediumGrey),
            )
          ],
        ));
  }
}
