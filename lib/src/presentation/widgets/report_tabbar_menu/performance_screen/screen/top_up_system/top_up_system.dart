import 'package:flutter/material.dart';

import '../../../../CustomElevatedButton.dart';
import '../../../../card/card_info.dart';
import '../../../../card/card_info_emblem.dart';
import '../../../../card_info_condition.dart';
import 'journey_01/journey_01.dart';
import 'journey_02/journey_02.dart';
import 'performance_card_additional_promotions.dart';
import 'performance_card_condition.dart';
import 'performance_card_top_up.dart';

class SimPrePaidScreen extends StatefulWidget {
  const SimPrePaidScreen({super.key});

  @override
  State<SimPrePaidScreen> createState() => _SimPrePaidScreenState();
}

class _SimPrePaidScreenState extends State<SimPrePaidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 247, 1),
      appBar: AppBar(
        backgroundColor: Colors.white, // พื้นหลังสีขาว
        elevation: 0, // ปิดเงา AppBar
        shape: const Border(
          // ปิดเส้นขอบด้านล่าง AppBar
          bottom: BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
        ),
        title: Text(
          'ซิมระบบเติมเงิน',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Color.fromRGBO(27, 28, 25, 1),
                fontWeight: FontWeight.bold,
              ),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/arrow_back.png',
            width: 24,
            height: 24,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/home.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // เมื่อกดปุ่ม Home
            },
          ),
        ],
        // bottom: ReportTabBar(tabController: _tabController),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 232,
              width: MediaQuery.of(context).size.width,
              child: CardInfo(
                child: Column(
                  children: [PerformanceCardTopUp()],
                ),
              ),
            ),
            SizedBox(
              // height: 232,
              width: MediaQuery.of(context).size.width,
              child: CardInfo(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      PerformanceCardCondition(),
                      CustomElevatedButton(
                        text: 'ดูรายละเอียด jey 1',
                        step: Journey01(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              // height: 232,
              width: MediaQuery.of(context).size.width,
              child: CardInfo(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      PerformanceCardAdditionalPromotions(),
                      CustomElevatedButton(
                        text: 'ดูรายละเอียด jey 2',
                        step: Journey02(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 55,
            )
          ],
        ),
      ),
    );
  }
}
