import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/hecta_app.dart';
import 'package:injectable/injectable.dart';

import 'core/routing/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  await configureDependencies(Environment.dev);
  await EasyLocalization.ensureInitialized();

  runApp(HectaApp(appRouter: getIt<AppRouter>()));
}
