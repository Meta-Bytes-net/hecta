import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/features/orders/presentation/widgets/orders_screen_content.dart';

/// Single order card that matches the layout in the screenshot
class OrderCard extends StatelessWidget {
  final OrderItem item;
  const OrderCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // final s = AppStrings.of(context);
    final color = Theme.of(context).colorScheme;
    return Card(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   side: BorderSide(color: AppColors.blckColor, width: .3),
      // ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {}, // open order details
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            // spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderDetailsColumn(color: color, item: item),
              StatusAndNumberColumn(color: color, item: item),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusAndNumberColumn extends StatelessWidget {
  const StatusAndNumberColumn({
    super.key,
    required this.color,
    required this.item,
  });

  final ColorScheme color;
  final OrderItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 108,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _LinkText(
            // text: '',
            text: _statusLabel(item.status),
            onTap: () {},
            color: color.primary,
          ),
          const SizedBox(height: 6),
          _LinkText(
            text: '${AppStrings.orderNo.tr()} ${item.id}',
            onTap: () {},
            color: color.primary,
          ),
        ],
      ),
    );
  }

  String _statusLabel(OrderStatus status) {
    switch (status) {
      case OrderStatus.pending:
        return AppStrings.pending.tr();
      case OrderStatus.inProgress:
        return AppStrings.inProgress.tr();
      case OrderStatus.done:
        return AppStrings.done.tr();
      case OrderStatus.cancelled:
        return AppStrings.cancelled.tr();
    }
  }
}

class OrderDetailsColumn extends StatelessWidget {
  const OrderDetailsColumn({
    super.key,
    required this.color,
    required this.item,
  });

  final ColorScheme color;
  final OrderItem item;
  Widget _kv(BuildContext context, String k, String v) {
    final styleK = Theme.of(
      context,
    ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600);
    final styleV = Theme.of(context).textTheme.bodyMedium;
    return RichText(
      text: TextSpan(
        style: styleV,
        children: [
          TextSpan(text: '$k: ', style: styleK),
          TextSpan(text: v),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _kv(context, AppStrings.mainDept.tr(), item.mainDept),
          const SizedBox(height: 4),
          _kv(context, AppStrings.subDept.tr(), item.subDept),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.location_on_outlined, size: 18, color: color.primary),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  '${item.city}، ${item.street}',
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LinkText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  const _LinkText({
    required this.text,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
