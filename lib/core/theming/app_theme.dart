import 'package:flutter/material.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_font.dart';
import 'package:hecta/core/theming/app_sizes.dart';
import 'package:hecta/core/theming/app_text_styles.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: AppColors.mainBlue,
    // primaryColorLight: AppColors.lightPrimary,
    // primaryColorDark: AppColors.darkPrimary,
    // disabledColor: AppColors.blckColor,
    // splashColor: AppColors.lightPrimary,
    // ripple effect color
    // cardview theme
    // cardTheme: CardTheme(
    //   color: AppColors.white,
    //   shadowColor: AppColors.blckColor,
    //   elevation: AppSize.s4,
    // ),
    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,

      // color: AppColors.primary,
      elevation: AppSize.s4,

      // shadowColor: AppColors.lightPrimary,
      // titleTextStyle: getRegularStyle(
      //   fontSize: FontSize.s16,
      //   color: AppColors.white,
      // ),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      // disabledColor: AppColors.blckColor,
      // buttonColor: AppColors.primary,
      // splashColor: AppColors.lightPrimary,
    ),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // textStyle: getRegularStyle(
        //   color: AppColors.white,
        //   fontSize: FontSize.s17,
        // ),
        // backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // text theme
    // textTheme: TextTheme(
    textTheme: TextTheme(
      titleLarge: getSemiBoldStyle(
        color: AppColors.whiteColor,
        fontSize: FontSize.s18,
      ),
      labelMedium: getBoldStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s12,
      ).copyWith(height: 1.5),
      bodyLarge: getRegularStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s14,
      ),
      bodyMedium: getRegularStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s12,
      ),
      bodySmall: getRegularStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s12,
      ),
      titleSmall: getMediumStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s14,
      ),
      labelSmall: getBoldStyle(
        color: AppColors.mainBlue,
        fontSize: FontSize.s12,
      ),
      headlineLarge: getSemiBoldStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s16,
      ),
      headlineMedium: getRegularStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s14,
      ),
      titleMedium: getMediumStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s16,
      ),
      headlineSmall: getRegularStyle(
        color: AppColors.blckColor,
        fontSize: FontSize.s14,
      ),

      // bodyLarge: getRegularStyle(color: AppColors.blckColor),

      // headlineLarge: getSemiBoldStyle(
      //   color: AppColors.blckColor,
      //   fontSize: FontSize.s16,
      // ),
      // headlineMedium: getRegularStyle(
      //   color: AppColors.blckColor,
      //   fontSize: FontSize.s14,
      // ),
      // titleMedium: getMediumStyle(
      //   color: AppColors.mainBlue,
      //   fontSize: FontSize.s16,
      // ),
      // titleSmall: getRegularStyle(
      //   color: AppColors.mainBlue,
      //   fontSize: FontSize.s16,
      // ),
      // bodyLarge: getRegularStyle(color: AppColors.blckColor),
      // bodySmall: getRegularStyle(color: AppColors.blckColor),
      // bodyMedium: getRegularStyle(
      //   color: AppColors.blckColor,
      //   fontSize: FontSize.s12,
      // ),
      // labelSmall: getBoldStyle(
      //   color: AppColors.mainBlue,
      //   fontSize: FontSize.s12,
      // ),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      // hintStyle: getRegularStyle(color: AppColors.blckColor, fontSize: FontSize.s14),
      // labelStyle: getMediumStyle(color: AppColors.blckColor, fontSize: FontSize.s14),
      // errorStyle: getRegularStyle(color: AppColors.error),

      // enabled border style
      enabledBorder: OutlineInputBorder(
        // borderSide: BorderSide(color: AppColors.blckColor, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // focused border style
      focusedBorder: OutlineInputBorder(
        // borderSide: BorderSide(color: AppColors.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // error border style
      errorBorder: OutlineInputBorder(
        // borderSide: BorderSide(color: AppColors.error, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
        // borderSide: BorderSide(color: AppColors.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
    // label style
  );
}
