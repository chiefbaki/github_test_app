import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/utils/resources/resources.dart';
import 'package:git_test/features/widgets/custom_list_tile.dart';
import 'package:git_test/features/widgets/custom_user_card.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Image.asset(Images.background),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 46, vertical: 80),
                child: ListView.separated(
                  itemCount: 20,
                  itemBuilder: (_, index) {
                    return const CustomUserCard();
                  },
                  separatorBuilder: (_, index) => SizedBox(
                    height: 16.h,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
