import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/sales_summary_card.dart';
import 'package:flutter/material.dart';

import '../../../../card_info_condition.dart';
import '../../../../card_info_condition_details.dart';
import '../../../../card_info_top_up.dart';

class PerformanceCardCondition extends StatefulWidget {
  const PerformanceCardCondition({Key? key}) : super(key: key);

  @override
  State<PerformanceCardCondition> createState() =>
      _PerformanceCardConditionState();
}

class _PerformanceCardConditionState extends State<PerformanceCardCondition> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardInfoCondition(
              title: 'เปิดเบอร์ใหม่',
              all_sim_numbers: '30',
              pass_sim_numbers: '26',
              failed_numbers: '4',
              imagePath: 'assets/images/AIS-12C.png',
            ),
            SizedBox(
              height: 8,
            ),
            CardInfoConditionDetails(
              all_sim_numbers: '30',
              pass_sim_numbers: '27',
              failed_numbers: '3',
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB3E500), // สีพื้นหลังปุ่ม
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: Text(
                  'ดูรายละเอียด',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: const Color.fromRGBO(37, 51, 0, 1),
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
