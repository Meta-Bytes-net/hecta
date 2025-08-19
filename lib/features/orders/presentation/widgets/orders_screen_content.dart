import 'package:flutter/material.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/core/shared/presentation/widgets/base_content_widget.dart';
import 'package:hecta/features/orders/presentation/widgets/order_card.dart';

class OrdersScreenContent extends StatelessWidget {
  const OrdersScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContentWidget(
      child: ListView.builder(
        itemCount: sampleOrdersAr.length,
        addRepaintBoundaries: false,
        addAutomaticKeepAlives: false,
        cacheExtent: context.screenHeight * 0.3,
        itemBuilder: (context, index) => OrderCard(item: sampleOrdersAr[index]),
      ),
    );
  }
}

/// Data model
enum OrderStatus { pending, inProgress, done, cancelled }

class OrderItem {
  final int id;
  final String mainDept;
  final String subDept;
  final String city;
  final String street;
  final OrderStatus status;

  const OrderItem({
    required this.id,
    required this.mainDept,
    required this.subDept,
    required this.city,
    required this.street,
    required this.status,
  });
}

/// Mock data to show the UI
List<OrderItem> sampleOrdersAr = const [
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 30,
    mainDept: 'الأمن',
    subDept: 'توريد فرد أمن',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 23,
    mainDept: 'التزيين',
    subDept: 'تشجير العقار',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 8,
    mainDept: 'الدش المركزي',
    subDept: 'تركيب دش',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 13,
    mainDept: 'المصعد',
    subDept: 'تركيب مصعد',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 18,
    mainDept: 'خزان المياه',
    subDept: 'نظافة دورية',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
  OrderItem(
    id: 1,
    mainDept: 'نظافة عامة',
    subDept: 'السلام',
    city: 'المنصورة',
    street: 'شارع احمد ماهر',
    status: OrderStatus.pending,
  ),
];
