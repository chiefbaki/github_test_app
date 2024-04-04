import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:git_test/core/config/routes/app_router.dart';
import 'package:git_test/core/utils/resources/resources.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void routing() {
    Future.delayed(const Duration(seconds: 3), () {
      context.router.push(const DashboardRoute());
    });
  }

  @override
  void initState() {
    super.initState();
    routing();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        Images.logo,
      ),
    );
  }
}
