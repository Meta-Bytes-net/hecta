import 'package:get_it/get_it.dart';
import 'package:hecta/core/di/injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: r'getItInit')
Future<void> configureDependencies(String? environment) async =>
    getIt.getItInit(environment: environment);
