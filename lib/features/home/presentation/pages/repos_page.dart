import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/theme/app_colors.dart';
import 'package:git_test/core/theme/app_fonts.dart';
import 'package:git_test/features/home/presentation/cubit/repos/repos_cubit.dart';

import 'package:git_test/features/home/presentation/local_widgets/repos_card.dart';
import 'package:git_test/features/widgets/arrow_back_btn.dart';

@RoutePage()
class ReposPage extends StatelessWidget {
  const ReposPage({super.key,});

  @override
  Widget build(BuildContext context) {
    const double paddingUnit = 5.0;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 60),
          child: BlocBuilder<ReposCubit, ReposState>(
            builder: (context, state) {
              return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                  success: (repos) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ArrowBackBtn(),
                            SizedBox(
                              width: paddingUnit * 2.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  repos.first.login.toString(),
                                  style: AppFonts.s16w600
                                      .copyWith(color: AppColors.mediumGrey),
                                ),
                                Text(
                                  "Repositories",
                                  style: AppFonts.s20w600
                                      .copyWith(color: AppColors.white),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: paddingUnit * 3.h,
                        ),
                        Expanded(
                            child: ListView.separated(
                                padding: EdgeInsets.zero,
                                key: GlobalKey(),
                                shrinkWrap: true,
                                itemBuilder: (_, index) {
                                  return ReposCard(
                                    repos: repos[index],
                                      paddingUnit: paddingUnit);
                                },
                                separatorBuilder: (_, index) => const Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Divider(
                                        color: AppColors.mediumGrey,
                                      ),
                                    ),
                                itemCount: repos.length)),
                      ],
                    );
                  },
                  failure: (error) => Text(error));
            },
          ),
        ),
      ),
    );
  }
}
