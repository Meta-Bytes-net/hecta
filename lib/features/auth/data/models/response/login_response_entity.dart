import 'package:dart_mappable/dart_mappable.dart';

part 'login_response_entity.mapper.dart';

@MappableClass()
class LoginResponseEntity with LoginResponseEntityMappable {
  String? status;
  String? message;
  LoginResponseDataEntity? data;

  LoginResponseEntity(this.status, this.message, this.data);

  factory LoginResponseEntity.fromMap(Map<String, dynamic> map) =>
      LoginResponseEntityMapper.fromMap(map);

  factory LoginResponseEntity.fromJson(String json) =>
      LoginResponseEntityMapper.fromJson(json);

  static LoginResponseEntityMapper ensureInitialized() =>
      LoginResponseEntityMapper.ensureInitialized();
}

@MappableClass()
class LoginResponseDataEntity with LoginResponseDataEntityMappable {
  LoginResponseDataUserEntity? user;
  LoginResponseDataTokenEntity? token;

  LoginResponseDataEntity(this.user, this.token);

  factory LoginResponseDataEntity.fromMap(Map<String, dynamic> map) =>
      LoginResponseDataEntityMapper.fromMap(map);

  factory LoginResponseDataEntity.fromJson(String json) =>
      LoginResponseDataEntityMapper.fromJson(json);

  static LoginResponseDataEntityMapper ensureInitialized() =>
      LoginResponseDataEntityMapper.ensureInitialized();
}

@MappableClass()
class LoginResponseDataUserEntity with LoginResponseDataUserEntityMappable {
  String? id;
  String? name;
  String? email;
  String? avatar;

  LoginResponseDataUserEntity(this.id, this.name, this.email, this.avatar);

  factory LoginResponseDataUserEntity.fromMap(Map<String, dynamic> map) =>
      LoginResponseDataUserEntityMapper.fromMap(map);

  factory LoginResponseDataUserEntity.fromJson(String json) =>
      LoginResponseDataUserEntityMapper.fromJson(json);

  static LoginResponseDataUserEntityMapper ensureInitialized() =>
      LoginResponseDataUserEntityMapper.ensureInitialized();
}

@MappableClass()
class LoginResponseDataTokenEntity with LoginResponseDataTokenEntityMappable {
  @MappableField(key: 'access_token')
  String? accessToken;
  @MappableField(key: 'expires_in')
  int? expiresIn;
  @MappableField(key: 'refresh_token')
  String? refreshToken;

  LoginResponseDataTokenEntity(
    this.accessToken,
    this.expiresIn,
    this.refreshToken,
  );

  factory LoginResponseDataTokenEntity.fromMap(Map<String, dynamic> map) =>
      LoginResponseDataTokenEntityMapper.fromMap(map);

  factory LoginResponseDataTokenEntity.fromJson(String json) =>
      LoginResponseDataTokenEntityMapper.fromJson(json);

  static LoginResponseDataTokenEntityMapper ensureInitialized() =>
      LoginResponseDataTokenEntityMapper.ensureInitialized();
}
