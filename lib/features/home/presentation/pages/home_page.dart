import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_test/core/utils/resources/resources.dart';
import 'package:git_test/features/home/presentation/cubit/internet_connection/internet_connection_cubit.dart';
import 'package:git_test/features/home/presentation/cubit/users/users_cubit.dart';
import 'package:git_test/features/home/presentation/local_widgets/custom_text_btn.dart';
import 'package:git_test/features/home/presentation/local_widgets/custom_user_card.dart';
import 'package:git_test/generated/l10n.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<UsersCubit>().getUsers();
    context.read<InternetConnectionCubit>().checkConnectivity();
    context.read<InternetConnectionCubit>().trackConnectivityChange();
  }

  @override
  void dispose() {
    super.dispose();
    context.read<InternetConnectionCubit>().dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocBuilder<InternetConnectionCubit, InternetStatus>(
          builder: (context, state) {
            return state.status == ConnectivityStatus.connected
                ? Stack(
                    children: [
                      Theme.of(context).brightness == Brightness.light
                          ? const SizedBox()
                          : Image.asset(Images.background),
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).title,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              BlocBuilder<UsersCubit, UsersState>(
                                builder: (context, state) {
                                  return state.when(
                                      initial: () => const SizedBox(),
                                      loading: () => const SizedBox(),
                                      success: (users) {
                                        return Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 46,
                                            ),
                                            child: ListView.separated(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              itemCount: users.length,
                                              itemBuilder: (_, index) {
                                                return CustomUserCard(
                                                  users: users[index],
                                                );
                                              },
                                              separatorBuilder: (_, index) =>
                                                  SizedBox(
                                                height: 20.h,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      failure: (error) => Text(error));
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: BlocBuilder<UsersCubit, UsersState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              orElse: () => const SizedBox(),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: Column(
                    children: [
                      Text(
                        "No connection",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      CustomTextBtn(
                          title: "Close app",
                          onPressed: () {
                            SystemNavigator.pop();
                          })
                    ],
                  ));
          },
        ));
  }
}
