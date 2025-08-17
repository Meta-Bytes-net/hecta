import 'package:fpdart/fpdart.dart';
import 'package:hecta/core/networking/error_handler/failure.dart';
import 'package:hecta/features/auth/data/models/request/login_request.dart';
import 'package:hecta/features/auth/data/models/response/login_response/login_response.dart';

abstract class LoginRemoteDataSource {
  Future<Either<Failure, LoginResponse>> login(LoginRequest loginRequest);
}
