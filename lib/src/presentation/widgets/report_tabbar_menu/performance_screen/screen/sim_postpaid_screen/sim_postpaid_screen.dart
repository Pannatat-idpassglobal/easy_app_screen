import 'package:flutter/material.dart';

import '../../../../CustomElevatedButton.dart';
import '../../../../card/card_info.dart';
import '../../../../card/card_info_emblem.dart';
import '../../../../card_info_condition.dart';
import '../top_up_system/performance_card_postpaid.dart';


class SimPostPaidScreen extends StatefulWidget {
  const SimPostPaidScreen({super.key});

  @override
  State<SimPostPaidScreen> createState() => _SimPostPaidScreenState();
}

class _SimPostPaidScreenState extends State<SimPostPaidScreen> {
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
          'ซิมระบบรายเดือน',
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
            width: MediaQuery.of(context).size.width,
            child: CardInfo(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [PerformanceCardPostpaid()],
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
