import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/utils/resources/resources.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: const AssetImage(Images.ava),
        radius: 30.r,
      ),
      title: const Text(
        "chiefbaki",
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600),
      ),
      subtitle: const Text(
        "User",
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Image.asset(Images.arrowRight)),
    );
  }
}