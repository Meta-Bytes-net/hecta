import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/theming/app_sizes.dart';
import 'package:hecta/features/category_details/data/models/service_details_model.dart';

class CategoryDetailsContent extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const CategoryDetailsContent({
    super.key,
    required this.categoryName,
    required this.categoryImage,
  });

  @override
  Widget build(BuildContext context) {
    // Get services for this category
    final services =
        ServiceDetailsModel.getCategoryServices()[categoryName] ?? [];

    return SingleChildScrollView(
      padding: EdgeInsets.all(AppPadding.p20.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // // Category image
          // Container(
          //   height: 200.h,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(12.r),
          //     color: Colors.grey.shade100,
          //   ),
          //   child: Image.asset(categoryImage, fit: BoxFit.contain),
          // ),
          // SizedBox(height: AppSize.s20.h),

          // // Category title
          // Text(
          //   categoryName.tr(),
          //   style: Theme.of(context).textTheme.headlineSmall,
          //   textAlign: TextAlign.center,
          // ),

          // SizedBox(height: AppSize.s20.h),

          // Services list
          if (services.isEmpty)
            Center(
              child: Text(
                'No services available for this category.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: services.length,
              itemBuilder: (context, index) {
                final service = services[index];
                return Card(
                  margin: EdgeInsets.only(bottom: AppPadding.p12.sp),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppPadding.p12.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue.shade100,
                            child: Icon(
                              Icons.home_repair_service,
                              color: Colors.blue,
                            ),
                          ),
                          title: Text(
                            service.nameKey.tr(),
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 16),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
