import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/config/settings/dio_settings.dart';
import 'package:git_test/core/config/routes/app_router.dart';
import 'package:git_test/core/utils/theme/app_theme.dart';
import 'package:git_test/features/home/data/repositories/repos_impl.dart';
import 'package:git_test/features/home/data/repositories/details_impl.dart';
import 'package:git_test/features/home/data/repositories/users_impl.dart';
import 'package:git_test/features/home/domain/usecase/details_usecase.dart';
import 'package:git_test/features/home/domain/usecase/repos_usecase.dart';
import 'package:git_test/features/home/domain/usecase/users_usecase.dart';
import 'package:git_test/features/home/presentation/cubit/details/details_cubit.dart';
import 'package:git_test/features/home/presentation/cubit/internet_connection/internet_connection_cubit.dart';
import 'package:git_test/features/home/presentation/cubit/repos/repos_cubit.dart';
import 'package:git_test/features/home/presentation/cubit/users/users_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:git_test/generated/l10n.dart';

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
          create: (context) => UsersImpl(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) => DetailsImpl(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) => ReposImpl(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) =>
              (dio: RepositoryProvider.of<DioSettings>(context).dio,),
        ),
        RepositoryProvider(
          create: (context) => UsersUseCase(
              repository: RepositoryProvider.of<UsersImpl>(context)),
        ),
        RepositoryProvider(
          create: (context) => DetailsUseCase(
              repository: RepositoryProvider.of<DetailsImpl>(context)),
        ),
        RepositoryProvider(
          create: (context) => ReposUseCase(
              reposRepository: RepositoryProvider.of<ReposImpl>(context)),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UsersCubit(
                useCase: RepositoryProvider.of<UsersUseCase>(context)),
          ),
          BlocProvider(
            create: (context) => DetailsCubit(
                useCase: RepositoryProvider.of<DetailsUseCase>(context)),
          ),
          BlocProvider(
            create: (context) => ReposCubit(
                useCase: RepositoryProvider.of<ReposUseCase>(context)),
          ),
          BlocProvider<InternetConnectionCubit>(
            create: (context) => InternetConnectionCubit(),
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => MaterialApp.router(
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeResolutionCallback: (locale, supportedLocales) {
              for (var supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale?.languageCode &&
                    supportedLocale.countryCode == locale?.countryCode) {
                  return supportedLocale;
                }
              }
              return supportedLocales.first;
            },
            supportedLocales: const [Locale('en', 'EN'), Locale('ru', 'RU')],
            theme: darkTheme(),
            debugShowCheckedModeBanner: false,
            routerConfig: router.config(),
          ),
        ),
      ),
    );
  }
}
