import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/core/shared/presentation/state_renderer/base_cubit_wrapper.dart';
import 'package:hecta/core/shared/presentation/widgets/custom_app_bar.dart';
import 'package:hecta/features/category_details/presentation/cubit/category_details_cubit.dart';
import 'package:hecta/features/category_details/presentation/widgets/category_details_content.dart';

@RoutePage()
class CategoryDetailsScreen extends BaseCubitWrapper<CategoryDetailsCubit> {
  final String categoryName;
  // final String categoryImage;

  CategoryDetailsScreen({
    super.key,
    @PathParam('categoryName') required this.categoryName,
    // @QueryParam('categoryImage') required this.categoryImage,
  }) : super(
         createCubit: (ctx) => getIt<CategoryDetailsCubit>(),
         child: Scaffold(
           appBar: CustomAppBar(title: categoryName.tr()),
           body: CategoryDetailsContent(
             categoryName: categoryName,
             //  categoryImage: categoryImage,
           ),
         ),
       );
}
