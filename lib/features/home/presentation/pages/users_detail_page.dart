import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/config/routes/app_router.dart';
import 'package:git_test/core/utils/theme/app_colors.dart';
import 'package:git_test/features/home/presentation/cubit/details/details_cubit.dart';
import 'package:git_test/features/home/presentation/cubit/repos/repos_cubit.dart';
import 'package:git_test/features/home/presentation/local_widgets/custom_text_btn.dart';
import 'package:git_test/features/home/presentation/local_widgets/arrow_back_btn.dart';
import 'package:git_test/generated/l10n.dart';

@RoutePage()
class UserDetailPage extends StatelessWidget {
  const UserDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double paddingUnit = 5.0;
    return Scaffold(body: BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            success: (details) {
              return Stack(
                children: [
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(details.avatar_url ?? ""),
                          fit: BoxFit.cover),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 50),
                      child: ArrowBackBtn()),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 350),
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(30),
                                  right: Radius.circular(30))),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 80),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  details.name != null
                                      ? Text(
                                          details.name ?? "",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        )
                                      : const SizedBox(),
                                  SizedBox(
                                    height: paddingUnit * 4.h,
                                  ),
                                  Text(
                                    details.login ?? "",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  SizedBox(
                                    height: paddingUnit * 3.h,
                                  ),
                                  details.bio != null
                                      ? Text(
                                          details.bio ?? "",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge,
                                        )
                                      : const SizedBox(),
                                  SizedBox(
                                    height: paddingUnit.h,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.people_alt_sharp,
                                        size: 17,
                                      ),
                                      SizedBox(
                                        width: paddingUnit.w,
                                      ),
                                      RichText(
                                          text: TextSpan(
                                              text:
                                                  details.followers.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium,
                                              children: [
                                            TextSpan(
                                                text: S.of(context).followers,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium!
                                                    .copyWith(
                                                        color: AppColors
                                                            .lightGrey))
                                          ])),
                                      SizedBox(
                                        width: paddingUnit * 2.w,
                                      ),
                                      RichText(
                                          text: TextSpan(
                                              text:
                                                  details.following.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium,
                                              children: [
                                            TextSpan(
                                                text: S.of(context).following,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium!
                                                    .copyWith(
                                                        color: AppColors
                                                            .lightGrey))
                                          ])),
                                    ],
                                  ),
                                  SizedBox(
                                    height: paddingUnit * 3.h,
                                  ),
                                  details.company != null
                                      ? Column(
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.location_city_sharp,
                                                  size: 16,
                                                ),
                                                SizedBox(
                                                  width: paddingUnit.w,
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    details.company ?? "",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displayMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: paddingUnit * 2.w,
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                  details.location != null
                                      ? Column(
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.local_airport,
                                                  size: 16,
                                                ),
                                                SizedBox(
                                                  width: paddingUnit.w,
                                                ),
                                                Text(
                                                  details.location ?? "",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayMedium,
                                                ),
                                                SizedBox(
                                                  height: paddingUnit * 3.h,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                  CustomTextBtn(
                                      title: S.of(context).repositories,
                                      onPressed: () {
                                        context.read<ReposCubit>().getRepos(
                                            login: details.login ?? "");
                                        context.router.push(ReposRoute(
                                            login: details.login ?? ""));
                                      })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 220),
                        child: ClipOval(
                          child: Image.network(
                            details.avatar_url ?? "",
                            width: 300,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
            failure: (error) => Text(error));
      },
    ));
  }
}
