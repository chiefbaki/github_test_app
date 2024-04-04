import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:git_test/core/config/routes/dashboard.dart';
import 'package:git_test/core/utils/resources/splash/splash_screen.dart';
import 'package:git_test/features/home/presentation/pages/home_page.dart';
import 'package:git_test/features/home/presentation/pages/users_detail_page.dart';
import 'package:git_test/features/settings/presentation/settings_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Splash screen
        AutoRoute(
          page: SplashRoute.page,
          initial: true
        ),
        // Bottom nav bar
        AutoRoute(page: DashboardRoute.page, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(
            page: SettingsRoute.page,
          ),
        ]),

        // User detail info page
        AutoRoute(
          page: UserDetailRoute.page,
        )
      ];
}
