import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_sizes.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool enabled;
  final int? maxLines;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final Color? borderColor;
  final double? borderRadius;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
    this.maxLines = 1,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.focusNode,
    this.textInputAction,
    this.contentPadding,
    this.fillColor,
    this.borderColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      enabled: enabled,
      maxLines: maxLines,
      onTap: onTap,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      textInputAction: textInputAction,
      textAlign: TextAlign.right,
      style: TextStyle(
        fontSize: 16.sp,
        color: AppColors.blckColor,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: context.theme.textTheme.titleSmall!.copyWith(
          color: AppColors.lightGray,
          
        ),
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
                child: Icon(
                  prefixIcon,
                  color: Color(0xFF9f9fa1),
                  size: AppSize.s28.sp,
                ),
              )
            : null,
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: Icon(
          suffixIcon,
          color: Color(0xFF9f9fa1),
          size: AppSize.s28.sp,
        ),
        filled: true,
        fillColor: fillColor ?? AppColors.whiteColor,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(
              horizontal: AppPadding.p16.w,
              vertical: AppPadding.p12.h,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppSize.s12.r),
          borderSide: BorderSide(
            color: borderColor ?? AppColors.lightGray,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppSize.s12.r),
          borderSide: BorderSide(
            color: borderColor ?? AppColors.lightGray,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppSize.s12.r),
          borderSide: BorderSide(
            color: AppColors.mainBlue.withValues(alpha: 0.5),
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppSize.s12.r),
          borderSide: BorderSide(color: AppColors.redColor, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppSize.s12.r),
          borderSide: BorderSide(color: AppColors.redColor, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppSize.s12.r),
          borderSide: BorderSide(
            color: AppColors.gray.withValues(alpha: 0.5),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
