import 'package:flutter/material.dart';

class DynamicSaleInfoWidget extends StatelessWidget {
  final String title;
  final List<SaleItem> items;

  const DynamicSaleInfoWidget({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 1)),
              ),
              Text(
                'ซิม',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ...items.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.label,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Color.fromRGBO(119, 120, 116, 1),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '${item.value}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: item.value > 0
                            ? Color.fromRGBO(95, 130, 0, 1)
                            : Color.fromRGBO(27, 28, 25, 1)),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

class SaleItem {
  final String label;
  final int value;

  SaleItem({required this.label, required this.value});
}
