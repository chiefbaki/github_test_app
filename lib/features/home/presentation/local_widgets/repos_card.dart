import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/theme/app_colors.dart';
import 'package:git_test/core/theme/app_fonts.dart';
import 'package:git_test/features/home/data/models/repos/repos_dto.dart';
import 'package:git_test/features/home/presentation/local_widgets/fork_count_btn.dart';
import 'package:git_test/features/home/presentation/local_widgets/star_count_btn.dart';

class ReposCard extends StatelessWidget {
  final ReposDto repos;
  const ReposCard({super.key, required this.paddingUnit, required this.repos});

  final double paddingUnit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    repos.name ?? "",
                    style: AppFonts.s20w600.copyWith(color: AppColors.blue),
                  ),
                  SizedBox(
                    width: paddingUnit * 3.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.mediumGrey)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      child: Text(
                        repos.visibility ?? "",
                        style: AppFonts.s14w400
                            .copyWith(color: AppColors.mediumGrey),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: paddingUnit * 2.h,
              ),
              repos.description != null
                  ? Column(
                      children: [
                        Text(
                          repos.description ?? "",
                          style: AppFonts.s14w600
                              .copyWith(color: AppColors.mediumGrey),
                        ),
                        SizedBox(
                          height: paddingUnit.h,
                        ),
                      ],
                    )
                  : const SizedBox(),
              Row(
                children: [
                  repos.language != null
                      ? Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.blue,
                              radius: 7.r,
                            ),
                            SizedBox(
                              width: paddingUnit.w,
                            ),
                            Text(
                              repos.language ?? "",
                              style: AppFonts.s14w500
                                  .copyWith(color: AppColors.mediumGrey),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(
                    width: paddingUnit * 3.w,
                  ),
                  repos.stargazersCount != null
                      ? StarCountBtn(
                          count: repos.stargazersCount.toString(),
                        )
                      : const SizedBox(),
                  SizedBox(
                    width: paddingUnit.w,
                  ),
                  repos.forksCount != null
                      ? ForkCountBtn(forkCount: repos.forksCount.toString())
                      : const SizedBox()
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
