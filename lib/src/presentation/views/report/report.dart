import 'package:easy_app_sreen_reports/src/presentation/widgets/BasicCarousel/basic_carousel.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/ReportTabItem/custom_tabbar.dart';
import 'package:easy_app_sreen_reports/src/presentation/widgets/carouselWithIndicator/carousel_indicator.dart';
// import 'package:easy_app_sreen_reports/src/presentation/widgets/custom_tabbar/custom_tabbar.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> with TickerProviderStateMixin {
  late TabController _tabController;

  final List<String> imgList = [
    "image1.png",
    "image2.png",
    "image3.png",
    "image1.png",
    "image2.png",
    "image3.png"
  ];

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
      appBar: AppBar(
        // toolbarHeight: 131,
        title: Text(
          'รายงาน',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        // centerTitle: true,
        backgroundColor: Colors.white, // พื้นหลังสีขาว
        elevation: 0, // เอาเงาออก
        leading: Padding(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: Image.asset('../../../../../assets/icons/arrow_back.png',
                width: 24, height: 24), // ไอคอนบ้าน
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon: Image.asset('../../../../../assets/icons/home.png',
                  width: 24, height: 24), // ไอคอนบ้าน
              onPressed: () {
                // กำหนดการทำงานเมื่อกดปุ่ม Home
              },
            ),
          ),
        ],
        bottom: ReportTabBar(tabController: _tabController),

      ),
      body: TabBarView(
        controller: _tabController, // ต้องกำหนด controller ที่นี่ด้วย
        children: [
          Center(child: Text("หน้าผลการดำเนินงาน")),
          Center(child: Text("หน้าสรุปผลตอบแทน")),
          Center(child: Text("หน้ารายการย้อนหลัง")),
          Center(child: Text("หน้าคอมมิชชั่น")),
        ],
      ),
    );
  }
}

// class BasicDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<int> list = [1, 2, 3, 4, 5];
//     return Scaffold(
//       appBar: AppBar(title: Text('Basic demo')),
//       body: Container(
//           child: CarouselSlider(
//         options: CarouselOptions(),
//         items: list
//             .map((item) => Container(
//                   child: Center(child: Text(item.toString())),
//                   color: Colors.green,
//                 ))
//             .toList(),
//       )),
//     );
//   }
// }
