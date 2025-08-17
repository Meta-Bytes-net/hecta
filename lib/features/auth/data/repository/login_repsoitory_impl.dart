import 'package:fpdart/fpdart.dart';
import 'package:hecta/core/networking/error_handler/failure.dart';
import 'package:hecta/features/auth/data/datasources/remote/login_remote_data_source.dart';
import 'package:hecta/features/auth/data/mapper/login_mapper.dart';
import 'package:hecta/features/auth/data/models/request/login_request.dart';
import 'package:hecta/features/auth/domain/entities/login_model.dart';
import 'package:hecta/features/auth/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepositoryImpl(this.loginRemoteDataSource);

  @override
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest) async {
    final result = await loginRemoteDataSource.login(loginRequest);
    return result.fold(Left.new, (response) => Right(response.toDomain()));
  }
}
