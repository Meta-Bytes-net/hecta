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
        icon: Icons.person_outline,
        onTap: () {
          context.router.pushPath(Routers.editProfile);
        },
      ),
      _MoreOption(
        title: AppStrings.editPassword.tr(),

        icon: Icons.lock_outline,
        onTap: () {},
      ),
      _MoreOption(
        title: AppStrings.contactUs.tr(),
        icon: Icons.contact_support_outlined,
        onTap: () => context.router.pushPath(Routers.contactUs),
      ),
      _MoreOption(
        title: AppStrings.packages.tr(),
        icon: Icons.gradient_rounded,
        onTap: () {
          context.router.pushPath(Routers.packages);
        },
      ),
      _MoreOption(
        title: AppStrings.aboutApp.tr(),
        icon: Icons.info_outline_rounded,
        onTap: () {},
      ),
      _MoreOption(
        title: AppStrings.privacyPolicy.tr(),
        icon: Icons.gpp_maybe_outlined,
        onTap: () {},
      ),
      _MoreOption(
        title: AppStrings.termsAndConditions.tr(),
        icon: Icons.assignment_outlined,
        onTap: () {},
      ),
    ];

    return BaseContentWidget(
      bottomPadding: AppPadding.p20,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _buildAvatar(context)),
          SliverList.separated(
            itemBuilder: (ctx, idx) => _MoreTile(
              option: options[idx],
              isfirst: idx == 0,
              islast: idx == options.length - 1,
            ),
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemCount: options.length,
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    final double avatarSize = context.screenWidth * 0.30;
    return Center(
      child: Container(
        width: avatarSize,
        height: avatarSize,
        margin: EdgeInsets.only(bottom: AppMargin.m14.h),
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
  final IconData icon;
  final VoidCallback onTap;
  const _MoreOption({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}

class _MoreTile extends StatelessWidget {
  final _MoreOption option;
  bool? isfirst;
  bool? islast;
  _MoreTile({required this.option, this.isfirst = false, this.islast = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: isfirst == true
              ? Radius.circular(AppSize.s16.r)
              : Radius.zero,
          topRight: isfirst == true
              ? Radius.circular(AppSize.s16.r)
              : Radius.zero,
          bottomLeft: islast == true
              ? Radius.circular(AppSize.s16.r)
              : Radius.zero,
          bottomRight: islast == true
              ? Radius.circular(AppSize.s16.r)
              : Radius.zero,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppPadding.p16.w,
        vertical: AppPadding.p8.h,
      ),
      leading: Icon(
        option.icon,
        color: AppColors.mainBlue,
        size: AppSize.s28.sp,
      ),
      title: Text(option.title, style: context.textTheme.titleMedium),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: AppColors.gray),
      onTap: option.onTap,
    );
  }
}
