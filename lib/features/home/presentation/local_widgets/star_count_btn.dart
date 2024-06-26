import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/utils/theme/app_colors.dart';

class StarCountBtn extends StatelessWidget {
  final String count;
  const StarCountBtn({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Row(
          children: [
            const Icon(
              Icons.star_border,
              color: AppColors.mediumGrey,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              count,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: AppColors.mediumGrey),
            )
          ],
        ));
  }
}
