import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/config/routes/app_router.dart';
import 'package:git_test/core/theme/app_fonts.dart';
import 'package:git_test/core/utils/resources/resources.dart';
import 'package:git_test/features/home/presentation/cubit/users_cubit.dart';

class CustomListTile extends StatelessWidget {
  final String login;
  final String type;
  final String img;
  const CustomListTile(
      {super.key, required this.login, required this.type, required this.img});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(img),
        radius: 30.r,
      ),
      title: Text(
        login,
        style: AppFonts.s16w600,
      ),
      subtitle: Text(
        type,
        style: AppFonts.s14w400,
      ),
      trailing: IconButton(
          onPressed: () {
            context.router.push(UserDetailRoute(login: login));
            context.read<UsersCubit>().getUsers(login: "/$login");
          },
          icon: Image.asset(Images.arrowRight)),
    );
  }
}
