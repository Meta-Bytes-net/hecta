import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/core/shared/presentation/widgets/app_text_button.dart';
import 'package:hecta/core/shared/presentation/widgets/base_content_widget.dart';
import 'package:hecta/core/shared/presentation/widgets/custom_text_form_field.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_sizes.dart';
import 'package:hecta/features/edit_profile/presentation/cubit/edit_profile_cubit.dart';
import 'package:hecta/features/edit_profile/presentation/cubit/edit_profile_state.dart';

class EditProfileScreenContent extends StatefulWidget {
  const EditProfileScreenContent({super.key});

  @override
  State<EditProfileScreenContent> createState() =>
      _EditProfileScreenContentState();
}

class _EditProfileScreenContentState extends State<EditProfileScreenContent> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BaseContentWidget(
        bottomPadding: AppPadding.p20,
        child: BlocListener<EditProfileCubit, EditProfileState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {},
              success: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(AppStrings.success.tr()),
                    backgroundColor: AppColors.greenColor,
                  ),
                );
                Navigator.of(context).pop();
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                    backgroundColor: AppColors.redColor,
                  ),
                );
              },
            );
          },
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: AppSize.s28.h),
                _buildProfileImage(),
                SizedBox(height: AppSize.s40.h),
                _buildNameField(),
                SizedBox(height: AppSize.s20.h),
                _buildMobileField(),
                SizedBox(height: AppSize.s20.h),
                _buildEmailField(),
                const Spacer(),
                _buildSaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.mainBlue,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.whiteColor,
          size: AppSize.s20.sp,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        AppStrings.editProfile.tr(),
        style: context.textTheme.titleLarge?.copyWith(
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _buildProfileImage() {
    final double imageSize = context.screenWidth * 0.35;
    return GestureDetector(
      onTap: () {
        // Handle image selection
        // context.read<ProfileCubit>().updateProfileImage('path');
      },
      child: Center(
        child: Stack(
          children: [
            Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.gray.withAlpha(50),
                    blurRadius: 6,
                    spreadRadius: 1,
                    offset: Offset(0, 6),
                  ),
                ],
                // border: Border.all(color: AppColors.gray, width: 2),
              ),
              child: ClipOval(
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 35.sp,
                  color: AppColors.gray,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNameField() {
    return CustomTextFormField(
      hintText: AppStrings.username.tr(),
      controller: _nameController,
      keyboardType: TextInputType.name,
      suffixIcon: Icons.person_outline,

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppStrings.usernameError.tr();
        }
        return null;
      },
    );
  }

  Widget _buildMobileField() {
    return CustomTextFormField(
      hintText: AppStrings.mobileNumber.tr(),
      controller: _mobileController,
      keyboardType: TextInputType.phone,
      suffixIcon: Icons.phone_outlined,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppStrings.mobileNumberInvalid.tr();
        }
        return null;
      },
    );
  }

  Widget _buildEmailField() {
    return CustomTextFormField(
      hintText: AppStrings.emailHint.tr(),
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      suffixIcon: Icons.email_outlined,

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return AppStrings.invalidEmail.tr();
        }
        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
          return AppStrings.invalidEmail.tr();
        }
        return null;
      },
    );
  }

  Widget _buildSaveButton() {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return AppTextButton(
          onPressed: _handleSave,

          // style: ElevatedButton.styleFrom(
          //   backgroundColor: AppColors.mainBlue,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(AppSize.s12.r),
          //   ),
          //   elevation: 0,
          // ),
          buttonText: 'حفظ',
          textStyle: null,
          // textStyle:,
          // child: isLoading
          //     ? SizedBox(
          //         width: AppSize.s28.w,
          //         height: AppSize.s28.h,
          //         child: CircularProgressIndicator(
          //           color: AppColors.whiteColor,
          //           strokeWidth: 2,
          //         ),
          //       )
          //     : Text(
          //         'حفظ',
          //         style: context.textTheme.titleMedium?.copyWith(
          //           color: AppColors.whiteColor,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
        );
      },
    );
  }

  void _handleSave() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<EditProfileCubit>().updateProfile(
        name: _nameController.text.trim(),
        mobileNumber: _mobileController.text.trim(),
        email: _emailController.text.trim(),
      );
    }
  }
}
