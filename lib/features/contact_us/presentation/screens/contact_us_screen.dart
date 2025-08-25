import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/core/shared/presentation/widgets/custom_app_bar.dart';
import 'package:hecta/features/contact_us/presentation/cubit/contact_us_cubit.dart';
import 'package:hecta/features/contact_us/presentation/widgets/contact_us_content.dart';

@RoutePage()
class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ContactUsCubit>(),
      child: Scaffold(
        body: SafeArea(child: ContactUsContent()),
        appBar: CustomAppBar(title: AppStrings.contactUs.tr()),
      ),
    );
  }
}
