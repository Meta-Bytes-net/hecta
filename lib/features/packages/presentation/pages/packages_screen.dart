import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/core/shared/presentation/widgets/base_content_widget.dart';
import 'package:hecta/core/shared/presentation/widgets/custom_app_bar.dart';
import 'package:hecta/core/theming/app_sizes.dart';
import 'package:hecta/features/packages/presentation/cubit/packages_cubit.dart';
import 'package:hecta/features/packages/presentation/widgets/package_card.dart';

@RoutePage()
class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PackagesCubit()..loadPackages(),
      child: Scaffold(
        appBar: CustomAppBar(title: AppStrings.packagesTitle.tr()),
        body: BaseContentWidget(
          child: BlocBuilder<PackagesCubit, PackagesState>(
            builder: (context, state) {
              return switch (state) {
                PackagesLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
                PackagesError(:final messageKey) => Center(
                  child: Text(messageKey.tr()),
                ),
                PackagesLoaded(:final packages) when packages.isEmpty => Center(
                  child: Text(AppStrings.emptyPackages.tr()),
                ),
                PackagesLoaded(:final packages) => ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p16,
                    vertical: AppPadding.p12,
                  ),
                  itemCount: packages.length,
                  itemBuilder: (context, index) {
                    final item = packages[index];
                    return PackageCard(
                      item: item,
                      isSelected: item.isSubscribed,
                      onToggleSubscription: () => context
                          .read<PackagesCubit>()
                          .toggleSubscription(item),
                      onRequestReport: () =>
                          context.read<PackagesCubit>().requestReport(item),
                      onRequestPreview: () =>
                          context.read<PackagesCubit>().requestPreview(item),
                    );
                  },
                ),
                _ => const SizedBox.shrink(),
              };
            },
          ),
        ),
      ),
    );
  }
}
