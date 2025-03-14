import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/sales_summary_card.dart';
import 'package:flutter/material.dart';

import '../../../../CustomElevatedButton.dart';
import '../../../../ExpandableDetailTable.dart';
import '../../../../card_info_condition.dart';
import '../../../../card_info_condition_details.dart';
import '../../../../card_info_condition_postpaid.dart';
import '../../../../card_info_top_up.dart';
import 'journey_01/journey_01.dart';

class PerformanceCardPostpaid extends StatefulWidget {
  final dynamic onTap;

  const PerformanceCardPostpaid({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<PerformanceCardPostpaid> createState() =>
      _PerformanceCardPostpaidState();
}

class _PerformanceCardPostpaidState extends State<PerformanceCardPostpaid> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardInfoCondition(
            title: 'ซิมระบบรายเดือน',
            allSimNumbers: '6',
            passSimNumbers: '6',
            imagePath: 'assets/images/AIS-12C.png',
          ),
          SizedBox(
            height: 8,
          ),
          CardInfoConditionPostpaid(
            newRegister: '3',
            mnp: '1',
            convert: '2'
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
