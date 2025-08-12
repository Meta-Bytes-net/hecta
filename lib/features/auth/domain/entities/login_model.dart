import 'package:flutter/material.dart';

@immutable
class LoginModel {
  final String name;
  final String email;
  final String avatar;
  const LoginModel({required this.name, required this.email, this.avatar = ''});
}
