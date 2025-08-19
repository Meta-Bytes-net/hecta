import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/app_assets.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_sizes.dart';

class MoreScreenContent extends StatelessWidget {
  const MoreScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    // List of options with their corresponding icons.
    final List<_MoreOption> options = [
      _MoreOption(title: 'تعديل الملف الشخصى', iconPath: Assets.imagesProfile, onTap: () {}),
      _MoreOption(title: 'تعديل كلمة المرور', iconPath: Assets.imagesSecurity, onTap: () {}),
      _MoreOption(title: 'اتصل بنا', iconPath: Assets.imagesChatIcon, onTap: () {}),
      _MoreOption(title: 'الباقات', iconPath: Assets.imagesServices, onTap: () {}),
      _MoreOption(title: 'عن التطبيق', iconPath: Assets.imagesHectaIcon, onTap: () {}),
      _MoreOption(title: 'سياسة الخصوصية', iconPath: Assets.imagesGeneralCleaning, onTap: () {}),
      _MoreOption(title: 'الشروط والأحكام', iconPath: Assets.imagesMoreIcon, onTap: () {}),
    ];

    return BaseContentWidget(
      bottomPadding: AppPadding.p20,
      child: Column(
        children: [
          SizedBox(height: AppSize.s24.h),
          _buildAvatar(context),
          SizedBox(height: AppSize.s24.h),
          Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(AppSize.s12.r),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: options.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (ctx, idx) => _MoreTile(option: options[idx]),
            ),
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
  const _MoreOption({required this.title, required this.iconPath, required this.onTap});
}

class _MoreTile extends StatelessWidget {
  final _MoreOption option;
  const _MoreTile({required this.option});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w, vertical: AppPadding.p4.h),
      leading: ImageIcon(AssetImage(option.iconPath), color: AppColors.mainBlue, size: AppSize.s28.sp),
      title: Text(option.title, style: context.textTheme.bodyMedium),
      trailing: const Icon(Icons.arrow_back_ios_new, color: AppColors.gray),
      onTap: option.onTap,
    );
  }
}