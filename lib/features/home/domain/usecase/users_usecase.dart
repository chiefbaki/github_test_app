import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:git_test/features/home/data/models/users/users_dto.dart';

class UsersUseCase {
  final Dio _dio;
  UsersUseCase({required Dio dio}) : _dio = dio;
  Future<List<UsersDto>> getUsers() async {
    final Response response = await _dio.get(
      "",
    );

    final List<UsersDto> users = [];
    for (var element in response.data) {
      users.add(UsersDto.fromJson(element));
    }
    return users;
  }

  Future<UsersDto> getDetail({required String login}) async {
    final Response response = await _dio.get("/$login");
    debugPrint(UsersDto.fromJson(response.data).toString());
    return UsersDto.fromJson(response.data);
  }
}
