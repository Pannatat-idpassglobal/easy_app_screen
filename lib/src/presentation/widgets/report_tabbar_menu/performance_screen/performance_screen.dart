import 'package:easy_app_sreen_reports/src/presentation/widgets/card/card_info.dart';
import 'package:flutter/material.dart';
import 'package:easy_app_sreen_reports/themes/colors.dart';

import '../../card_info_row.dart';
import 'performance_card_carousel.dart';

class PerformanceResultsScreen extends StatefulWidget {
  const PerformanceResultsScreen({super.key});

  @override
  State<PerformanceResultsScreen> createState() =>
      _PerformanceResultsScreenState();
}

class _PerformanceResultsScreenState extends State<PerformanceResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 148,
            width: MediaQuery.of(context).size.width,
            child: PerformanceCardCarousel(),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CardInfo(
              child: CardInfoRow(
                title: 'ซิมระบบเติมเงิน',
                date: 'ข้อมูล ณ วันที่ 24 พ.ย. 67',
                imagePath: '../../../../../../assets/images/AIS-12C.png', // ระบุชื่อไฟล์รูปภาพ
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CardInfo(
              child: CardInfoRow(
                title: 'ซิมระบบรายเดือน',
                date: 'ข้อมูล ณ วันที่ 24 พ.ย. 67',
                imagePath: '../../../../../../assets/images/AIS-LOGO.png', // ระบุชื่อไฟล์รูปภาพ
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CardInfo(
              child: Column(
                children: [
                  CardInfoRow(
                    title: 'เติมเงินและขายโปรเสริม',
                    date: 'ข้อมูล ณ วันที่ 24 พ.ย. 67',
                    imagePath: '../../../../../../assets/images/chm.iconillus_primary.png', // ระบุชื่อไฟล์รูปภาพ
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CardInfo(
              child: CardInfoRow(
                title: 'เอไอเอสไฟเบอร์',
                date: 'ข้อมูล ณ วันที่ 24 พ.ย. 67',
                imagePath: '../../../../../../assets/images/AIS-LOGO.png', // ระบุชื่อไฟล์รูปภาพ
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
