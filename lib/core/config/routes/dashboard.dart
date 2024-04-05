import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:git_test/core/config/routes/app_router.dart';
import 'package:git_test/core/utils/theme/app_colors.dart';
import 'package:git_test/generated/l10n.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), SettingsRoute()],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.blue,
            selectedIconTheme: const IconThemeData(color: Color(0XFF4493f8)),
            selectedLabelStyle: const TextStyle(
              fontSize: 11,
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                  label: S.of(context).home, icon: const Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: S.of(context).settings,
                  icon: const Icon(Icons.settings))
            ],
          ),
        );
      },
    );
  }
}
