import 'package:auto_route/auto_route.dart';
import 'package:git_test/core/utils/resources/splash/splash_screen.dart';
import 'package:git_test/features/home/presentation/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, ),
        AutoRoute(
          page: HomeRoute.page,
          initial: true
        )
      ];
}
