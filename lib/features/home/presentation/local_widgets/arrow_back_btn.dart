import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


class ArrowBackBtn extends StatelessWidget {
  final Color color;
  const ArrowBackBtn({
    super.key,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.router.maybePop();
        },
        icon: Icon(
          Icons.arrow_back_outlined,
          color: color,
        ));
  }
}
