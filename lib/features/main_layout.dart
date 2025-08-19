import 'package:auto_route/auto_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/app_assets.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/core/shared/presentation/widgets/custom_app_bar.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_sizes.dart';
import 'package:hecta/features/home/presentation/screens/home_screen.dart';
import 'package:hecta/features/orders/presentation/screens/orders_screen.dart';
import 'package:hecta/features/more/presentation/screens/more_screen.dart';

@RoutePage()
class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  final List<String> _titles = [
    AppStrings.hectaBuildingServices,
    AppStrings.orders,
    AppStrings.customerService,
    AppStrings.more,
  ];

  final List<Widget> _pages = [
    HomeScreen(),
    OrdersScreen(),
    const Center(child: Text('محتوى خدمة العملاء')),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: _titles[_selectedIndex].tr(),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: AppColors.whiteColor,
        buttonBackgroundColor: AppColors.whiteColor,
        height: context.screenHeight * 0.08,
        index: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          ImageIcon(
            AssetImage(Assets.imagesHomeIcon),
            size: AppSize.s28.sp,
            color: _getIconColor(0),
          ),
          ImageIcon(
            AssetImage(Assets.imagesOrdersIcon),
            size: AppSize.s28.sp,
            color: _getIconColor(1),
          ),
          ImageIcon(
            AssetImage(Assets.imagesChatIcon),
            size: AppSize.s28.sp,
            color: _getIconColor(2),
          ),
          ImageIcon(
            AssetImage(Assets.imagesMoreIcon),
            size: AppSize.s28.sp,
            color: _getIconColor(3),
          ),
        ],
      ),
    );
  }

  Color _getIconColor(int index) {
    return _selectedIndex == index ? AppColors.mainBlue : AppColors.gray;
  }
}
