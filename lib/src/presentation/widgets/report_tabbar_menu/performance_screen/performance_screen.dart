import 'package:easy_app_sreen_reports/src/presentation/widgets/card/card_info.dart';
import 'package:flutter/material.dart';
import 'package:easy_app_sreen_reports/themes/colors.dart';

import '../../card_info_row.dart';
import '../../sale_info_details.dart';
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
            height: 144,
            width: MediaQuery.of(context).size.width,
            child: PerformanceCardCarousel(),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CardInfo(
              child: Column(
                children: [
                  CardInfoRow(
                    title: 'ซิมระบบเติมเงิน',
                    date: 'ข้อมูล ณ วันที่ 24 พ.ย. 67',
                    imagePath:
                        'assets/images/AIS-12C.png', // ระบุชื่อไฟล์รูปภาพ
                  ),
                  SaleInfoDataWidget(
                    leftLine1:
                        '', // หรือจะไม่ส่งก็ได้ถ้าตั้งค่า default เป็น ''
                    leftLine2: 'เปิดเบอร์ใหม่',
                    leftLine3: 'ขายโปรเสริมภายในวัน',
                    leftLine4: '',
                    rightCol1Title: '',
                    rightCol1Value1: '',
                    rightCol1Value2: '',
                    rightCol1Value3: '',
                    rightCol2Title: 'ซิม',
                    rightCol2Value1: '27',
                    rightCol2Value2: '2',
                    rightCol2Value3: '',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CardInfo(
              child: Column(
                children: [
                  CardInfoRow(
                    title: 'ซิมระบบรายเดือน',
                    date: 'ข้อมูล ณ วันที่ 24 พ.ย. 67',
                    imagePath:
                        'assets/images/AIS-LOGO.png', // ระบุชื่อไฟล์รูปภาพ
                  ),
                  SaleInfoDataWidget(
                    leftLine1:
                        '', // หรือจะไม่ส่งก็ได้ถ้าตั้งค่า default เป็น ''
                    leftLine2: 'จดทะเบียนเบอร์ใหม่',
                    leftLine3: 'ย้ายค่ายเบอร์เดิม',
                    leftLine4: 'เปลี่ยนเติมเงินเป็นรายเดือน',
                    rightCol1Title: '',
                    rightCol1Value1: '',
                    rightCol1Value2: '',
                    rightCol1Value3: '',
                    rightCol2Title: 'ซิม',
                    rightCol2Value1: '3',
                    rightCol2Value2: '1',
                    rightCol2Value3: '2',
                  ),
                ],
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
                    imagePath:
                        'assets/images/chm.iconillus_primary.png', // ระบุชื่อไฟล์รูปภาพ
                  ),
                  SaleInfoDataWidget(
                    leftLine1:
                        '', // หรือจะไม่ส่งก็ได้ถ้าตั้งค่า default เป็น ''
                    leftLine2: 'เติมเงิน',
                    leftLine3: 'ขายโปรเสริม',
                    leftLine4: '',
                    rightCol1Title: 'รายการ',
                    rightCol1Value1: '230',
                    rightCol1Value2: '42',
                    rightCol1Value3: '42',
                    rightCol2Title: 'บาท',
                    rightCol2Value1: '4,270',
                    rightCol2Value2: '2,478',
                    rightCol2Value3: '2,478',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CardInfo(
              child: Column(
                children: [
                  CardInfoRow(
                    title: 'เอไอเอสไฟเบอร์',
                    date: 'ข้อมูล ณ วันที่ 24 พ.ย. 67',
                    imagePath:
                        'assets/images/AIS-LOGO.png', // ระบุชื่อไฟล์รูปภาพ
                  ),
                  SaleInfoDataWidget(
                    leftLine1:
                        '', // หรือจะไม่ส่งก็ได้ถ้าตั้งค่า default เป็น ''
                    leftLine2: 'ติดตั้งสำเร็จ',
                    leftLine3: '',
                    leftLine4: '',
                    rightCol1Title: '',
                    rightCol1Value1: '',
                    rightCol1Value2: '',
                    rightCol1Value3: '',
                    rightCol2Title: 'เบอร์',
                    rightCol2Value1: '0',
                    rightCol2Value2: '',
                    rightCol2Value3: '',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 110),
        ]),
      ),
    );
  }
}
