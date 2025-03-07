import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/sales_summary_card.dart';
import 'package:flutter/material.dart';

import '../../../../card_info_top_up.dart';

class PerformanceCardTopUp extends StatefulWidget {
  const PerformanceCardTopUp({Key? key}) : super(key: key);

  @override
  State<PerformanceCardTopUp> createState() => _PerformanceCardTopUpState();
}

class _PerformanceCardTopUpState extends State<PerformanceCardTopUp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // หัวข้อผลการดำเนินงาน
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(215, 255, 105, 1),
                    Color.fromRGBO(204, 255, 64, 1)
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'ผลการดำเนินงาน',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: const Color.fromRGBO(37, 51, 0, 1),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 12),
            // รายการข้อมูล โดยใช้ CardInfoTopUp
            CardInfoTopUp(
              title: 'เปิดเบอร์ใหม่',
              numbers: '27',
              imagePath: 'assets/images/AIS-12C.png',
            ),
            const SizedBox(height: 8),
            CardInfoTopUp(
              title: 'ขายโปรเสริมภายในวัน',
              numbers: '2',
              imagePath:
                  'assets/images/chm.iconillus_primary.png', // ตรวจสอบ imagePath ว่าถ้าไม่มี ควรมี placeholder หรือไม่
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 13.33,
                  height: 13.33,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage('assets/icons/icon_info_gray.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 8), // ช่องว่างระหว่างไอคอนกับข้อความ
                Text(
                  'ข้อมูลซิมระบบเติมเงิน ณ วันที่ 24 พฤศจิกายน 2567\n'
                  'แสดงเฉพาะเบอร์ที่ผ่านเงื่อนไขการเปิดเบอร์และแสดงตน',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: const Color.fromRGBO(119, 120, 116, 1),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0,
                      height: 1.2),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
