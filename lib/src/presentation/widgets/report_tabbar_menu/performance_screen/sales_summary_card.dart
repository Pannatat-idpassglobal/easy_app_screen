import 'package:flutter/material.dart';

class SalesSummaryCard extends StatelessWidget {
  final String monthName; // เพิ่มตัวแปรรับข้อมูลจากภายนอก

  const SalesSummaryCard({
    Key? key,
    required this.monthName, // required เพื่อบังคับให้ต้องส่งค่าเข้ามา
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            image: AssetImage('assets/images/emblem.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
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
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Color.fromRGBO(37, 51, 0, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Text(
                            'ยอดขายเดือน$monthName',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Color.fromRGBO(70, 71, 68, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Positioned(
                          right: 10,
                          child: Image.asset(
                            'assets/coin_icon.png',
                            width: 75,
                            height: 67.5,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
