import 'package:flutter/material.dart';

@immutable
class LoginModel {
  final String name;
  final String phone;
  final int age;
  const LoginModel({
    required this.name,
    required this.phone,
    required this.age,
  });
}
