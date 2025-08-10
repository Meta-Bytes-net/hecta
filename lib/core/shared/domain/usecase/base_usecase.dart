import 'package:fpdart/fpdart.dart';

import '../../../networking/error_handler/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> call(In input);
}
