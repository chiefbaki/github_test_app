import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/theme/app_colors.dart';
import 'package:git_test/core/theme/app_fonts.dart';
import 'package:git_test/core/utils/resources/resources.dart';

@RoutePage()
class UserDetailPage extends StatelessWidget {
  final String login;
  const UserDetailPage({super.key, required this.login});

  @override
  Widget build(BuildContext context) {
    double _paddingUnit = 5.0;
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(Images.ava),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: BackButton(
            onPressed: () {
              context.router.maybePop();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 360),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30), right: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Islam Kurbanov",
                    style: AppFonts.s32w600,
                  ),
                  SizedBox(
                    height: _paddingUnit * 4.h,
                  ),
                  const Text(
                    "chiefbaki",
                    style: AppFonts.s24w300,
                  ),
                  SizedBox(
                    height: _paddingUnit * 3.h,
                  ),
                  const Text(
                    "flutter dev",
                    style: AppFonts.s20w500,
                  ),
                  SizedBox(
                    height: _paddingUnit * 3.h,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.people_alt_sharp,
                        size: 17,
                      ),
                      SizedBox(
                        width: _paddingUnit.w,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "19",
                              style: AppFonts.s14w600,
                              children: [
                            TextSpan(
                                text: " followers",
                                style: AppFonts.s14w600
                                    .copyWith(color: AppColors.lightGrey))
                          ])),
                      SizedBox(
                        width: _paddingUnit * 2.w,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "8",
                              style: AppFonts.s14w600,
                              children: [
                            TextSpan(
                                text: " following",
                                style: AppFonts.s14w600
                                    .copyWith(color: AppColors.lightGrey))
                          ])),
                    ],
                  ),
                  SizedBox(
                    height: _paddingUnit * 3.h,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_city_sharp,
                        size: 16,
                      ),
                      SizedBox(
                        width: _paddingUnit.w,
                      ),
                      const Text(
                        "MIREA",
                        style: AppFonts.s14w600,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _paddingUnit.h,
                  ),
                  SizedBox(
                    height: _paddingUnit * 2.w,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_city_sharp,
                        size: 16,
                      ),
                      SizedBox(
                        width: _paddingUnit.w,
                      ),
                      const Text(
                        "Bishkek",
                        style: AppFonts.s14w600,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _paddingUnit * 3.h,
                  ),
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(163, 20, 30, 48),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Repositories",
                              style: AppFonts.s14w300
                                  .copyWith(color: AppColors.white),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
