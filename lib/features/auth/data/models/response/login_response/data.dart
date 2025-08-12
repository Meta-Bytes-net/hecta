import 'package:json_annotation/json_annotation.dart';

import 'token.dart';
import 'user.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  User? user;
  Token? token;

  Data({this.user, this.token});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
