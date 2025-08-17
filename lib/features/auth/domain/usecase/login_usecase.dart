import 'package:fpdart/fpdart.dart';
import 'package:hecta/core/shared/domain/usecase/base_usecase.dart';
import 'package:hecta/core/networking/error_handler/failure.dart';
import 'package:hecta/features/auth/data/models/request/login_request.dart';
import 'package:hecta/features/auth/domain/entities/login_model.dart';
import 'package:hecta/features/auth/domain/repository/login_repository.dart';

class LoginUseCase implements BaseUseCase<LoginRequest, LoginModel> {
  final LoginRepository loginRepository;

  LoginUseCase(this.loginRepository);

  @override
  Future<Either<Failure, LoginModel>> call(LoginRequest input) async {
    return loginRepository.login(input);
  }
}
