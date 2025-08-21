import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/app_assets.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/core/routing/app_router.dart';
import 'package:hecta/core/shared/presentation/widgets/base_content_widget.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_sizes.dart';

class MoreScreenContent extends StatelessWidget {
  const MoreScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    // List of options with their corresponding icons.
    final List<_MoreOption> options = [
      _MoreOption(
        title: AppStrings.editProfile.tr(),
        iconPath: Assets.imagesProfile,
        onTap: () {
          context.router.pushPath(Routers.editProfile);
        },
      ),
      _MoreOption(
        title: AppStrings.editPassword.tr(),

        iconPath: Assets.imagesSecurity,
        onTap: () {},
      ),
      _MoreOption(
        title: AppStrings.contactUs.tr(),
        iconPath: Assets.imagesChatIcon,
        onTap: () {},
      ),
      _MoreOption(
        title: AppStrings.packages.tr(),
        iconPath: Assets.imagesServices,
        onTap: () {},
      ),
      _MoreOption(
        title: AppStrings.aboutApp.tr(),
        iconPath: Assets.imagesHectaIcon,
        onTap: () {},
      ),
      _MoreOption(
        title: AppStrings.privacyPolicy.tr(),
        iconPath: Assets.imagesGeneralCleaning,
        onTap: () {},
      ),
      _MoreOption(
        title: AppStrings.termsAndConditions.tr(),
        iconPath: Assets.imagesMoreIcon,
        onTap: () {},
      ),
    ];

    return BaseContentWidget(
      bottomPadding: AppPadding.p20,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _buildAvatar(context)),
          SliverList.separated(
            itemBuilder: (ctx, idx) => _MoreTile(option: options[idx]),
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemCount: options.length,
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    final double avatarSize = context.screenWidth * 0.35;
    return Center(
      child: Container(
        width: avatarSize,
        height: avatarSize,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(AppSize.s16.r),
          border: Border.all(color: AppColors.mainBlue, width: 3),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.imagesProfile),
          ),
        ),
      ),
    );
  }
}

class _MoreOption {
  final String title;
  final String iconPath;
  final VoidCallback onTap;
  const _MoreOption({
    required this.title,
    required this.iconPath,
    required this.onTap,
  });
}

class _MoreTile extends StatelessWidget {
  final _MoreOption option;
  const _MoreTile({required this.option});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppPadding.p16.w,
        vertical: AppPadding.p8.h,
      ),
      leading: ImageIcon(
        AssetImage(option.iconPath),
        color: AppColors.mainBlue,
        size: AppSize.s28.sp,
      ),
      title: Text(option.title, style: context.textTheme.bodyMedium),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: AppColors.gray),
      onTap: option.onTap,
    );
  }
}
