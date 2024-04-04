import 'package:flutter/material.dart';
import 'package:git_test/core/theme/app_colors.dart';
import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/presentation/local_widgets/custom_list_tile.dart';

class CustomUserCard extends StatelessWidget {
  final UsersDto users;
  const CustomUserCard({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.grey, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomListTile(
            login: users.login ?? "",
            img: users.avatar_url,
            type: users.type ?? "",
          ),
        ),
      ),
    );
  }
}
