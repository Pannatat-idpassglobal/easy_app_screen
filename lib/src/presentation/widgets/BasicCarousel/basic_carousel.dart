import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BasicCarousel extends StatelessWidget {
  final List<String> items;

  BasicCarousel({required this.items});

  @override
  Widget build(BuildContext context) {
    return SalesSummaryCard();
  }
}

class SalesSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Expanded(
        child: Container(
          width: double.infinity,
          // height: 136,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage('../../../../assets/images/emblem.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // แท็ก "ผลการดำเนินงาน"
              Row(
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
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
                              Color(0xFFD7FF69),
                              Color(0xFFCCFF40),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'ผลการดำเนินงาน',
                          style: TextStyle(
                            // color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      Container(
                        child: Text(
                          'ยอดขายเดือนพฤศจิกายน 2567',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          '../../../../assets/coin_icon.png', // ไฟล์รูปเหรียญต้องอยู่ใน assets
                          width: 80,
                          height: 67.5,
                        ),
                        // ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}