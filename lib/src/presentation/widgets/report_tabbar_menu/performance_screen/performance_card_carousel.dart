import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/sales_summary_card.dart';
import 'package:flutter/material.dart';

// EXAMPLE
final List<String> dateList = [
  'มกราคม 2568',
  'กุมภาพันธ์ 2568',
  'มีนาคม 2568',
  'เมษายน 2568',
  'พฤษภาคม 2568',
  'มิถุนายน 2568',
  // 'กรกฎาคม 2568',
  // 'สิงหาคม 2568',
  // 'กันยายน 2568',
  // 'ตุลาคม 2568',
  // 'พฤศจิกายน 2568',
  // 'ธันวาคม 2568',
];


final List<Widget> dateSliders = dateList
    .map(
      (item) => Container(
        child: SalesSummaryCard(
          monthName: item, // ส่งเดือนเข้าไปใน SalesSummaryCard
        ),
      ),
    )
    .toList();

class PerformanceCardCarousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PerformanceCardCarouselState();
  }
}

class _PerformanceCardCarouselState extends State<PerformanceCardCarousel> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(27, 28, 25, 0.07),
                  blurRadius: 16,
                ),
              ],
            ),
            child: CarouselSlider(
              items: dateSliders,
              carouselController: _controller,
              options: CarouselOptions(
                animateToClosest: false,
                pageSnapping: true,
                autoPlay: false,
                enlargeCenterPage: false,
                padEnds: true,
                height: 138,
                reverse: false,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dateList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (_current == entry.key
                        ? Color(0xFF9ACF08)
                        : Color(0xFFE2E3E1)),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}