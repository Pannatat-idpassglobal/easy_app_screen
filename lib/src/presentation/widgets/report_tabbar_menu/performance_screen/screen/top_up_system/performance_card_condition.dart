import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/sales_summary_card.dart';
import 'package:flutter/material.dart';

import '../../../../CustomElevatedButton.dart';
import '../../../../ExpandableDetailTable.dart';
import '../../../../card_info_condition.dart';
import '../../../../card_info_condition_details.dart';
import '../../../../card_info_top_up.dart';
import 'journey_01/journey_01.dart';

class PerformanceCardCondition extends StatefulWidget {
  final dynamic onTap;

  const PerformanceCardCondition({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<PerformanceCardCondition> createState() =>
      _PerformanceCardConditionState();
}

class _PerformanceCardConditionState extends State<PerformanceCardCondition> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardInfoCondition(
            title: 'เปิดเบอร์ใหม่',
            allSimNumbers: '30',
            passSimNumbers: '26',
            failedNumbers: '4',
            imagePath: 'assets/images/AIS-12C.png',
          ),
          SizedBox(
            height: 8,
          ),
          CardInfoConditionDetails(
            all_sim_numbers: '30',
            pass_sim_numbers: '26',
            failed_numbers: '4',
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
