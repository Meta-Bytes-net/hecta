import 'package:hecta/core/helpers/app_constants.dart';
import 'package:hecta/features/auth/data/models/response/login_response/login_response.dart';
import 'package:hecta/features/auth/domain/entities/login_model.dart';

extension LoginResponseMapper on LoginResponse? {
  LoginModel toDomain() {
    return LoginModel(
      name: this?.data?.user?.name ?? AppConstants.empty,
      email: this?.data?.user?.email ?? AppConstants.empty,
      avatar: this?.data?.user?.avatar ?? AppConstants.empty,
    );
  }
}
