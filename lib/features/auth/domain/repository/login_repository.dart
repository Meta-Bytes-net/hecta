import 'package:fpdart/fpdart.dart';
import 'package:hecta/core/networking/error_handler/failure.dart';
import 'package:hecta/features/auth/data/models/request/login_request.dart';
import 'package:hecta/features/auth/domain/entities/login_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest);
}
