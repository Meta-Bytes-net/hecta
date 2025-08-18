import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/app_constants.dart';
import 'package:hecta/core/helpers/app_languages.dart'
    show arabicLocal, assetPathLocalization;
import 'package:hecta/core/routing/app_router.dart';
import 'package:hecta/core/theming/app_theme.dart';

class HectaApp extends StatelessWidget {
  final AppRouter appRouter;

  const HectaApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [Locale('ar'), Locale('en')],
      path: assetPathLocalization,
      fallbackLocale: arabicLocal,
      startLocale: arabicLocal,
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            routerConfig: appRouter.config(),
            debugShowCheckedModeBanner: false,
            title: AppConstants.appName,
            theme: getApplicationTheme(),
          );
        },
      ),
    );
  }
}
