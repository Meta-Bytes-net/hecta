import 'package:flutter/material.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/core/theming/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final bool showBack;
  final VoidCallback? onBack;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double? elevation;
  final double height;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.showBack = false,
    this.onBack,
    this.actions,
    this.backgroundColor,
    this.elevation,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation ?? 0,
      backgroundColor: backgroundColor ?? Color(0xff0554cb),
      centerTitle: centerTitle,
      leading: showBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: onBack ?? () => Navigator.of(context).maybePop(),
            )
          : null,
      title: Text(title, style: context.textTheme.titleLarge),
      actions: actions,
      foregroundColor: AppColors.mainBlue,
    );
  }
}
