import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/config/network/network_settings/dio_settings.dart';
import 'package:git_test/core/config/routes/app_router.dart';
import 'package:git_test/core/theme/app_theme.dart';
import 'package:git_test/features/home/data/repository/users_impl.dart';
import 'package:git_test/features/home/domain/usecase/users_usecase.dart';
import 'package:git_test/features/home/presentation/cubit/details/details_cubit.dart';
import 'package:git_test/features/home/presentation/cubit/users/users_cubit.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) => UsersUseCase(
              dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
        RepositoryProvider(
          create: (context) =>
              UsersImpl(useCase: RepositoryProvider.of<UsersUseCase>(context)),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UsersCubit(
                repository: RepositoryProvider.of<UsersImpl>(context)),
          ),
          BlocProvider(
            create: (context) => DetailsCubit(
                repository: RepositoryProvider.of<UsersImpl>(context)),
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => MaterialApp.router(
            theme: darkTheme(),
            debugShowCheckedModeBanner: false,
            routerConfig: router.config(),
          ),
        ),
      ),
    );
  }
}
