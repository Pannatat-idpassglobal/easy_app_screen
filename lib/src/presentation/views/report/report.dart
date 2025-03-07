import 'package:easy_app_sreen_reports/src/presentation/widgets/BasicCarousel/basic_carousel.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/ReportTabItem/report_tab_item.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/carouselWithIndicator/carousel_indicator.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/performance_screen.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> with TickerProviderStateMixin {
  late TabController _tabController;

  // final List<String> imgList = [
  //   "image1.png",
  //   "image2.png",
  //   "image3.png",
  //   "image1.png",
  //   "image2.png",
  //   "image3.png"
  // ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
          'รายงาน',
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
        bottom: ReportTabBar(tabController: _tabController),
      ),
      body: TabBarView(
        controller: _tabController, // ต้องกำหนด controller ที่นี่ด้วย
        children: [
          Center(child: PerformanceResultsScreen()),
          Center(child: Text("หน้าสรุปผลตอบแทน")),
          Center(child: Text("หน้ารายการย้อนหลัง")),
          Center(child: Text("หน้าคอมมิชชั่น")),
        ],
      ),
    );
  }
}
