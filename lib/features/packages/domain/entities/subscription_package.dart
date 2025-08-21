import 'package:equatable/equatable.dart';

enum PackageTier { king, gold, tower, silver }

class SubscriptionPackage extends Equatable {
  final int id;
  final String nameKey; // localization key
  final double price;
  final String currencyKey; // localization key for currency
  final PackageTier tier;
  final bool isSubscribed;

  const SubscriptionPackage({
    required this.id,
    required this.nameKey,
    required this.price,
    required this.currencyKey,
    required this.tier,
    required this.isSubscribed,
  });

  SubscriptionPackage copyWith({
    int? id,
    String? nameKey,
    double? price,
    String? currencyKey,
    PackageTier? tier,
    bool? isSubscribed,
  }) {
    return SubscriptionPackage(
      id: id ?? this.id,
      nameKey: nameKey ?? this.nameKey,
      price: price ?? this.price,
      currencyKey: currencyKey ?? this.currencyKey,
      tier: tier ?? this.tier,
      isSubscribed: isSubscribed ?? this.isSubscribed,
    );
  }

  @override
  List<Object?> get props => [
    id,
    nameKey,
    price,
    currencyKey,
    tier,
    isSubscribed,
  ];
}
