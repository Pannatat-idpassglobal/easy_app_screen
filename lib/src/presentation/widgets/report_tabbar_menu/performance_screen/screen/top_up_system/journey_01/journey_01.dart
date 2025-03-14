import 'package:flutter/material.dart';
import '../../../../../ExpandableDetailTable.dart';
import '../../../../../card/card_info.dart';
import '../performance_card_condition.dart';

class Journey01 extends StatelessWidget {
  Journey01({super.key});

  final List<Map<String, dynamic>> dataMock = [
    {"date": "13", "total": 5, "passed": 5, "failed": 0, "details": []},
    {"date": "12", "total": 6, "passed": 6, "failed": 0, "details": []},
    {"date": "11", "total": 5, "passed": 5, "failed": 0, "details": []},
    {"date": "10", "total": 4, "passed": 4, "failed": 0, "details": []},
    {
      "date": "9",
      "total": 5,
      "passed": 3,
      "failed": 2,
      "details": [
        {
          "number": "094XXXXXX55",
          "status": "ผ่านเงื่อนไข",
          "simType": "THE ONE"
        },
        {
          "number": "094XXXXXX56",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "ZEED"
        },
        {
          "number": "094XXXXXX57",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Super Social"
        },
      ]
    },
    {"date": "8", "total": 1, "passed": 1, "failed": 0, "details": []},
    {"date": "7", "total": 1, "passed": 0, "failed": 1, "details": []},
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
                      PerformanceCardCondition(),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            /// ✅ **เพิ่มส่วนของ ListView.builder ที่แก้ไขแล้ว**
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CardInfo(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "รายระเอียด",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: const Color.fromRGBO(27, 28, 25, 1),
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(246, 246, 246, 1), // เปลี่ยนสีพื้นหลังเป็นสีฟ้า
                          borderRadius:
                              BorderRadius.circular(10), // ทำให้มีขอบโค้ง
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "ข้อมูล ณ วันที่",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color.fromRGBO(70, 71, 68, 1),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0),
                              ),
                              Text(
                                "จำนวนเบอร์\n(เบอร์)",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color.fromRGBO(70, 71, 68, 1),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0),
                                textAlign:
                                    TextAlign.center, // จัดกึ่งกลาง (ถ้าต้องการ)
                              ),
                              Text(
                                "ผ่านเงื่อนไข",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color.fromRGBO(70, 71, 68, 1),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0),
                              ),
                              Text(
                                "ไม่ผ่านเงื่อนไข",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Color.fromRGBO(70, 71, 68, 1),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListView.builder(
                        itemCount: dataMock.length,
                        shrinkWrap: true, // ให้ ListView ปรับขนาดตามเนื้อหา
                        physics:
                            const NeverScrollableScrollPhysics(), // ป้องกันการเลื่อนซ้อนกัน
                        itemBuilder: (context, index) {
                          return ExpandableDetailTable(
                            dateInfo: dataMock[index]["date"],
                            totalNumbers: dataMock[index]["total"],
                            passed: dataMock[index]["passed"],
                            failed: dataMock[index]["failed"],
                            details: List<Map<String, String>>.from(
                                dataMock[index]["details"] ?? []),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
