import 'package:hecta/core/helpers/app_strings.dart';

class ResponseMessage {
  static const String success = AppStrings.success;
  static const String noContent = AppStrings.noContent;
  static const String badRequest = AppStrings.badRequest;
  static const String unauthorised = AppStrings.unauthorizedError;
  static const String internalServerError = AppStrings.internalServerError;
  static const String forbidden = AppStrings.forbiddenError;

  // local error form app
  static const String connectTimeOut = AppStrings.timeoutError;
  static const String receiveTimeOut = AppStrings.timeoutError;
  static const String sendTimeOut = AppStrings.timeoutError;
  static const String cacheError = AppStrings.cacheError;
  static const String noInternetConnection = AppStrings.noInternetError;
  static const String defaultError = AppStrings.defaultError;
}
