import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.initial(brightness: Brightness.light));

  void setThemeBrightness(Brightness brightness) {
    emit(ThemeState.initial(brightness: brightness));
  }
}
