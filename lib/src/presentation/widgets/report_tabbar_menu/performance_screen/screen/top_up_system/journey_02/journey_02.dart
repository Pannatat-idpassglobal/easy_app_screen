import 'package:flutter/material.dart';
import '../../../../../ExpandableDetailTable.dart';
import '../../../../../card/card_info.dart';
import '../CardInfoSection.dart';
import '../performance_card_additional_promotions.dart';
import '../performance_card_condition.dart';

class Journey02 extends StatefulWidget {
  Journey02({super.key});

  @override
  _Journey02State createState() => _Journey02State();
}

class _Journey02State extends State<Journey02> {
  int? expandedIndex;
  final List<Map<String, dynamic>> dataList = [
    {
      "date": "2",
      "total": 2,
      "passed": 1,
      "failed": 1,
      "details": [
        {
          "number": "096906889",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Super Social"
        },
        {"number": "099643371", "status": "ผ่านเงื่อนไข", "simType": "THE ONE"}
      ]
    },
    {
      "date": "4",
      "total": 4,
      "passed": 4,
      "failed": 0,
      "details": [
        {
          "number": "093721755",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Net Marathon"
        },
        {"number": "091034968", "status": "ไม่ผ่านเงื่อนไข", "simType": "ZEED"},
        {
          "number": "093908926",
          "status": "ผ่านเงื่อนไข",
          "simType": "Super Social"
        },
        {
          "number": "098868435",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Net Marathon"
        }
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 247, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'ซิมระบบเติมเงิน',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: const Color.fromRGBO(27, 28, 25, 1),
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
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CardInfo(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: const [
                      PerformanceCardAdditionalPromotions(),
                    ],
                  ),
                ),
              ),
            ),
            CardInfoSection(
              dataList: dataList
            ),
          ],
        ),
      ),
    );
  }
}
