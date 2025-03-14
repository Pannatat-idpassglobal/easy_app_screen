import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/sales_summary_card.dart';
import 'package:flutter/material.dart';

import '../../../../card_info_condition.dart';
import '../../../../card_info_condition_details.dart';
import '../../../../card_info_top_up.dart';
import '../../../../dynamic_sale_info.dart';

class PerformanceCardAdditionalPromotions extends StatefulWidget {
  const PerformanceCardAdditionalPromotions({Key? key}) : super(key: key);

  @override
  State<PerformanceCardAdditionalPromotions> createState() =>
      _PerformanceCardAdditionalPromotionsState();
}

class _PerformanceCardAdditionalPromotionsState
    extends State<PerformanceCardAdditionalPromotions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardInfoCondition(
              title: 'ขายโปรเสริมภายในวัน',
              allSimNumbers: '2',
              passSimNumbers: '2',
              imagePath: 'assets/images/chm.iconillus_primary.png',
            ),
            DynamicSaleInfoWidget(
              title: 'สมัครแพ็กเกจเสริมสะสมภายในวัน',
              items: [
                SaleItem(label: 'น้อยกว่า 150 บาท', value: 0),
                SaleItem(label: '150 บาท', value: 0),
                SaleItem(label: '200 บาท', value: 1),
                SaleItem(label: '250 บาท', value: 1),
                SaleItem(label: '300 บาท', value: 0),
                SaleItem(label: '350 บาทขึ้นไป', value: 0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
