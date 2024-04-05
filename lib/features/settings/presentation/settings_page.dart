import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_test/core/utils/theme/cubit/theme_cubit.dart';
import 'package:git_test/generated/l10n.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final brightness = context.watch<ThemeCubit>().state.brightness;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                S.of(context).darkTheme,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              trailing: CupertinoSwitch(
                value: brightness == Brightness.dark,
                onChanged: (bool value) {
                  context.read<ThemeCubit>().setThemeBrightness(
                      value ? Brightness.dark : Brightness.light);
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
