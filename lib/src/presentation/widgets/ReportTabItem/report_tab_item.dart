import 'package:flutter/material.dart';

class ReportTabItem extends StatelessWidget {
  final List<String> texts;
  final TextStyle? textStyle;

  const ReportTabItem({
    super.key,
    required this.texts,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min, // ✅ ป้องกัน Column ขยายเกินขนาด
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: texts.map((text) => Text(text)).toList(),
      );
    
  }
}

class ReportTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;
  const ReportTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: const [
        ReportTabItem(texts: ["ผลการ", "ดำเนินงาน"]),
        ReportTabItem(texts: ["สรุปผล", "ตอบแทน"]),
        ReportTabItem(texts: ["รายการ", "ย้อนหลัง"]),
        ReportTabItem(
          texts: ["คอมมิชชั่น"],
          textStyle: TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF9ACF08), // Border color
            width: 3.0, // Border width
          ),
        ),
      ),
      labelColor: const Color(0xFF1B1C19),
      unselectedLabelColor: const Color(0xFF777874),
      indicatorColor: const Color(0xFF1B1C19),
      labelStyle: const TextStyle(fontSize: 18),
      labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
