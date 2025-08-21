part of 'packages_cubit.dart';

abstract class PackagesState extends Equatable {
  const PackagesState();
  const factory PackagesState.initial() = PackagesInitial;
  const factory PackagesState.loading() = PackagesLoading;
  const factory PackagesState.loaded(List<SubscriptionPackage> packages) =
      PackagesLoaded;
  const factory PackagesState.error({required String messageKey}) =
      PackagesError;
}

class PackagesInitial extends PackagesState {
  const PackagesInitial();
  @override
  List<Object?> get props => [];
}

class PackagesLoading extends PackagesState {
  const PackagesLoading();
  @override
  List<Object?> get props => [];
}

class PackagesLoaded extends PackagesState {
  final List<SubscriptionPackage> packages;
  const PackagesLoaded(this.packages);
  @override
  List<Object?> get props => [packages];
}

class PackagesError extends PackagesState {
  final String messageKey;
  const PackagesError({required this.messageKey});
  @override
  List<Object?> get props => [messageKey];
}
