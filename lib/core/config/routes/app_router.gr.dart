// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ReposRoute.name: (routeData) {
      final args = routeData.argsAs<ReposRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ReposPage(
          key: args.key,
          login: args.login,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    UserDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserDetailPage(),
      );
    },
  };
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReposPage]
class ReposRoute extends PageRouteInfo<ReposRouteArgs> {
  ReposRoute({
    Key? key,
    required String? login,
    List<PageRouteInfo>? children,
  }) : super(
          ReposRoute.name,
          args: ReposRouteArgs(
            key: key,
            login: login,
          ),
          initialChildren: children,
        );

  static const String name = 'ReposRoute';

  static const PageInfo<ReposRouteArgs> page = PageInfo<ReposRouteArgs>(name);
}

class ReposRouteArgs {
  const ReposRouteArgs({
    this.key,
    required this.login,
  });

  final Key? key;

  final String? login;

  @override
  String toString() {
    return 'ReposRouteArgs{key: $key, login: $login}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserDetailPage]
class UserDetailRoute extends PageRouteInfo<void> {
  const UserDetailRoute({List<PageRouteInfo>? children})
      : super(
          UserDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
