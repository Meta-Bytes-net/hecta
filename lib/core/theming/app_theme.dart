import 'package:flutter/material.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_sizes.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: AppColors.mainBlue,
    // primaryColorLight: AppColors.lightPrimary,
    // primaryColorDark: AppColors.darkPrimary,
    // disabledColor: AppColors.grey1,
    // splashColor: AppColors.lightPrimary,
    // ripple effect color
    // cardview theme
    // cardTheme: CardTheme(
    //   color: AppColors.white,
    //   shadowColor: AppColors.grey,
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
      // disabledColor: AppColors.grey1,
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

    // textTheme: TextTheme(
    //   displayLarge: getSemiBoldStyle(
    //     color: AppColors.darkGrey,
    //     fontSize: FontSize.s16,
    //   ),
    //   headlineLarge: getSemiBoldStyle(
    //     color: AppColors.darkGrey,
    //     fontSize: FontSize.s16,
    //   ),
    //   headlineMedium: getRegularStyle(
    //     color: AppColors.darkGrey,
    //     fontSize: FontSize.s14,
    //   ),
    //   titleMedium: getMediumStyle(
    //     color: AppColors.primary,
    //     fontSize: FontSize.s16,
    //   ),
    //   titleSmall: getRegularStyle(
    //     color: AppColors.white,
    //     fontSize: FontSize.s16,
    //   ),
    //   bodyLarge: getRegularStyle(color: AppColors.grey1),
    //   bodySmall: getRegularStyle(color: AppColors.grey),
    //   bodyMedium: getRegularStyle(
    //     color: AppColors.grey2,
    //     fontSize: FontSize.s12,
    //   ),
    //   labelSmall: getBoldStyle(
    //     color: AppColors.primary,
    //     fontSize: FontSize.s12,
    //   ),
    // ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      // hintStyle: getRegularStyle(color: AppColors.grey, fontSize: FontSize.s14),
      // labelStyle: getMediumStyle(color: AppColors.grey, fontSize: FontSize.s14),
      // errorStyle: getRegularStyle(color: AppColors.error),

      // enabled border style
      enabledBorder: OutlineInputBorder(
        // borderSide: BorderSide(color: AppColors.grey, width: AppSize.s1_5),
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
