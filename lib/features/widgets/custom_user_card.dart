import 'package:flutter/material.dart';
import 'package:git_test/features/widgets/custom_list_tile.dart';

class CustomUserCard extends StatelessWidget {
  const CustomUserCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomListTile(),
        ),
      ),
    );
  }
}
