import 'package:flutter/material.dart';
import '../../../../../ExpandableDetailTable.dart';
import '../../../../../card/card_info.dart';
import '../CardInfoSection.dart';
import '../performance_card_condition.dart';

class Journey01 extends StatefulWidget {
  Journey01({super.key});

  @override
  _Journey01State createState() => _Journey01State();
}

class _Journey01State extends State<Journey01> {
  int? expandedIndex;
  final List<Map<String, dynamic>> dataList = [
    {
      "date": "1",
      "total": 3,
      "passed": 0,
      "failed": 3,
      "details": [
        {"number": "097391977", "status": "ไม่ผ่านเงื่อนไข", "simType": "ZEED"},
        {
          "number": "091946661",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "THE ONE"
        },
        {"number": "091433813", "status": "ผ่านเงื่อนไข", "simType": "ZEED"}
      ]
    },
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
    {"date": "3", "total": 0, "passed": 0, "failed": 0, "details": []},
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
    },
    {
      "date": "5",
      "total": 2,
      "passed": 0,
      "failed": 2,
      "details": [
        {
          "number": "096938932",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Super Social"
        },
        {
          "number": "097496019",
          "status": "ผ่านเงื่อนไข",
          "simType": "Super Social"
        }
      ]
    },
    {
      "date": "6",
      "total": 5,
      "passed": 4,
      "failed": 1,
      "details": [
        {"number": "098155575", "status": "ผ่านเงื่อนไข", "simType": "ZEED"},
        {
          "number": "099734374",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "MAX SPEED"
        },
        {"number": "093113830", "status": "ผ่านเงื่อนไข", "simType": "THE ONE"},
        {"number": "099048239", "status": "ไม่ผ่านเงื่อนไข", "simType": "ZEED"},
        {
          "number": "095278143",
          "status": "ผ่านเงื่อนไข",
          "simType": "Net Marathon"
        }
      ]
    },
    {
      "date": "7",
      "total": 4,
      "passed": 2,
      "failed": 2,
      "details": [
        {
          "number": "096683879",
          "status": "ผ่านเงื่อนไข",
          "simType": "MAX SPEED"
        },
        {
          "number": "097759724",
          "status": "ผ่านเงื่อนไข",
          "simType": "MAX SPEED"
        },
        {
          "number": "096857981",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "MAX SPEED"
        },
        {"number": "094122032", "status": "ผ่านเงื่อนไข", "simType": "THE ONE"}
      ]
    },
    {
      "date": "8",
      "total": 2,
      "passed": 2,
      "failed": 0,
      "details": [
        {"number": "090392142", "status": "ไม่ผ่านเงื่อนไข", "simType": "ZEED"},
        {
          "number": "094034922",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "MAX SPEED"
        }
      ]
    },
    {
      "date": "9",
      "total": 4,
      "passed": 3,
      "failed": 1,
      "details": [
        {"number": "092741117", "status": "ไม่ผ่านเงื่อนไข", "simType": "ZEED"},
        {"number": "099169615", "status": "ผ่านเงื่อนไข", "simType": "ZEED"},
        {
          "number": "098090183",
          "status": "ผ่านเงื่อนไข",
          "simType": "MAX SPEED"
        },
        {
          "number": "093846721",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Super Social"
        }
      ]
    },
    {
      "date": "10",
      "total": 4,
      "passed": 1,
      "failed": 3,
      "details": [
        {
          "number": "092129394",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Super Social"
        },
        {"number": "093467797", "status": "ไม่ผ่านเงื่อนไข", "simType": "ZEED"},
        {"number": "096013354", "status": "ไม่ผ่านเงื่อนไข", "simType": "ZEED"},
        {
          "number": "098535769",
          "status": "ผ่านเงื่อนไข",
          "simType": "Super Social"
        }
      ]
    },
    {
      "date": "11",
      "total": 2,
      "passed": 0,
      "failed": 2,
      "details": [
        {"number": "090474153", "status": "ผ่านเงื่อนไข", "simType": "THE ONE"},
        {
          "number": "091705454",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "THE ONE"
        }
      ]
    },
    {
      "date": "12",
      "total": 3,
      "passed": 3,
      "failed": 0,
      "details": [
        {"number": "096661662", "status": "ผ่านเงื่อนไข", "simType": "THE ONE"},
        {
          "number": "096229230",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Super Social"
        },
        {
          "number": "094393791",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "MAX SPEED"
        }
      ]
    },
    {"date": "13", "total": 0, "passed": 0, "failed": 0, "details": []},
    {
      "date": "14",
      "total": 4,
      "passed": 1,
      "failed": 3,
      "details": [
        {
          "number": "092507827",
          "status": "ผ่านเงื่อนไข",
          "simType": "Net Marathon"
        },
        {"number": "092506558", "status": "ผ่านเงื่อนไข", "simType": "ZEED"},
        {
          "number": "097051533",
          "status": "ผ่านเงื่อนไข",
          "simType": "Super Social"
        },
        {
          "number": "093069719",
          "status": "ไม่ผ่านเงื่อนไข",
          "simType": "Super Social"
        }
      ]
    },
    {
      "date": "15",
      "total": 1,
      "passed": 1,
      "failed": 0,
      "details": [
        {
          "number": "099545739",
          "status": "ผ่านเงื่อนไข",
          "simType": "Super Social"
        }
      ]
    },
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
            CardInfoSection(
              dataList: dataList
            ),

            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
