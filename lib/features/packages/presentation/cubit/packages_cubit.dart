import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/features/packages/domain/entities/subscription_package.dart';

part 'packages_state.dart';

class PackagesCubit extends Cubit<PackagesState> {
  PackagesCubit() : super(const PackagesState.initial());

  Future<void> loadPackages() async {
    emit(const PackagesState.loading());
    try {
      // Fake seed data for now; in real app fetch from repository
      final packages = [
        SubscriptionPackage(
          id: 1,
          nameKey: AppStrings.packageHectaKing,
          price: 150,
          currencyKey: AppStrings.currencyAed,
          tier: PackageTier.king,
          isSubscribed: false,
        ),
        SubscriptionPackage(
          id: 2,
          nameKey: AppStrings.packageHectaGold,
          price: 200,
          currencyKey: AppStrings.currencyAed,
          tier: PackageTier.gold,
          isSubscribed: true,
        ),
        SubscriptionPackage(
          id: 3,
          nameKey: AppStrings.packageHectaTower,
          price: 300,
          currencyKey: AppStrings.currencyAed,
          tier: PackageTier.tower,
          isSubscribed: false,
        ),
        SubscriptionPackage(
          id: 4,
          nameKey: AppStrings.packageHectaSilver,
          price: 400,
          currencyKey: AppStrings.currencyAed,
          tier: PackageTier.silver,
          isSubscribed: true,
        ),
      ];
      emit(PackagesState.loaded(packages));
    } catch (e) {
      emit(PackagesState.error(messageKey: AppStrings.errorLoadingPackages));
    }
  }

  void toggleSubscription(SubscriptionPackage target) {
    final current = state;
    if (current is PackagesLoaded) {
      final updated = current.packages
          .map(
            (p) => p.id == target.id
                ? p.copyWith(isSubscribed: !p.isSubscribed)
                : p,
          )
          .toList(growable: false);
      emit(PackagesState.loaded(updated));
    }
  }

  void requestReport(SubscriptionPackage target) {
    // Hook for future: emit side effects or call repository
  }

  void requestPreview(SubscriptionPackage target) {
    // Hook for future
  }
}
