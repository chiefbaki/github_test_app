import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ArrowBackBtn extends StatelessWidget {
  const ArrowBackBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.router.maybePop();
        },
        icon: const Icon(Icons.arrow_back_outlined));
  }
}
