import 'package:fpdart/fpdart.dart';
import 'package:hecta/core/networking/error_handler/failure.dart';
import 'package:hecta/core/networking/network/api_safe_call.dart';
import 'package:hecta/core/networking/network_info/network_info.dart';
import 'package:hecta/features/auth/data/datasources/remote/login_remote_data_source.dart';
import 'package:hecta/features/auth/data/models/request/login_request.dart';
import 'package:hecta/features/auth/data/datasources/service/login_service.dart';
import 'package:hecta/features/auth/data/models/response/login_response.dart';

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final LoginService loginService;
  final NetworkInfo networkInfo;

  LoginRemoteDataSourceImpl(this.loginService, this.networkInfo);

  @override
  Future<Either<Failure, LoginResponse>> login(
    LoginRequest loginRequest,
  ) async {
    return safeAPiCall(networkInfo, () async {
      final response = await loginService.login(
        loginRequest.email,
        loginRequest.password,
      );

      return response.data;
    });
  }
}
