import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/app_assets.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/core/shared/presentation/widgets/app_text_button.dart';
import 'package:hecta/core/shared/presentation/widgets/base_content_widget.dart';
import 'package:hecta/core/shared/presentation/widgets/custom_text_form_field.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_sizes.dart';
import 'package:hecta/features/contact_us/presentation/cubit/contact_us_cubit.dart';

class ContactUsContent extends StatefulWidget {
  const ContactUsContent({super.key});

  @override
  State<ContactUsContent> createState() => _ContactUsContentState();
}

class _ContactUsContentState extends State<ContactUsContent> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _propertyCodeController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _propertyCodeController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactUsCubit, ContactUsState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppStrings.success.tr()),
                backgroundColor: AppColors.greenColor,
              ),
            );
            context.router.pop();
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
      child: BaseContentWidget(
        bottomPadding: AppPadding.p20,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              spacing: AppPadding.p18.h,
              children: [
                _buildLogo(),
                _buildNameField(),
                _buildPhoneField(),
                _buildPropertyCodeField(),
                _buildMessageField(),
                gapH4,
                _buildSubmitButton(),
                gapH4,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return SizedBox(
      height: context.screenHeight * .20,

      child: Center(
        child: Image.asset(
          Assets.imagesMainLogo,
          width: context.screenWidth * .25,
        ),
      ),
    );
  }

  Widget _buildNameField() {
    return CustomTextFormField(
      hintText: AppStrings.username.tr(),
      controller: _nameController,
      suffixIcon: Icons.person,

      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppStrings.userNameInvalid.tr();
        }
        return null;
      },
    );
  }

  Widget _buildPhoneField() {
    return CustomTextFormField(
      hintText: AppStrings.mobileNumber.tr(),
      controller: _phoneController,
      keyboardType: TextInputType.phone,
      suffixIcon: Icons.phone,

      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppStrings.mobileNumberInvalid.tr();
        }
        return null;
      },
    );
  }

  Widget _buildPropertyCodeField() {
    return CustomTextFormField(
      hintText: AppStrings.propertyCode.tr(),
      controller: _propertyCodeController,

      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppStrings.propertyCodeRequired.tr();
        }
        return null;
      },
    );
  }

  Widget _buildMessageField() {
    return CustomTextFormField(
      hintText: '${AppStrings.message.tr()} ....',
      controller: _messageController,
      maxLines: 4,
      suffixIcon: Icons.message,

      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppStrings.messageRequired.tr();
        }
        return null;
      },
    );
  }

  Widget _buildSubmitButton() {
    return BlocBuilder<ContactUsCubit, ContactUsState>(
      builder: (context, state) {
        return AppTextButton(
          buttonText: AppStrings.send.tr(),
          onPressed: state.maybeWhen(
            loading: () => null,
            orElse: () => _submitForm,
          ),
        );
      },
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.read<ContactUsCubit>().submitContactForm(
        name: _nameController.text,
        phone: _phoneController.text,
        propertyCode: _propertyCodeController.text,
        message: _messageController.text,
      );
    }
  }
}
