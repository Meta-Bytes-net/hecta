import 'package:hecta/core/helpers/app_constants.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/features/auth/data/models/response/login_response.dart';
import 'package:hecta/features/auth/domain/entities/login_model.dart';

extension LoginResponseMapper on LoginResponse? {
  LoginModel toDomain() {
    return LoginModel(
      name: this?.name.orEmpty() ?? AppConstants.empty,
      phone: this?.phone.orEmpty() ?? AppConstants.empty,
      age: this?.age.orZero() ?? AppConstants.zero,
    );
  }
}
