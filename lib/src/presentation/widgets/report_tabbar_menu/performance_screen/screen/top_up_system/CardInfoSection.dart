import 'package:flutter/material.dart';

import '../../../../ExpandableDetailTable.dart';
import '../../../../card/card_info.dart';

class CardInfoSection extends StatefulWidget {
  final List<Map<String, dynamic>> dataList;

  const CardInfoSection({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  @override
  State<CardInfoSection> createState() => _CardInfoSectionState();
}

class _CardInfoSectionState extends State<CardInfoSection> {
  int? expandedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 246, 246, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "ข้อมูล ณ วันที่",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: const Color.fromRGBO(70, 71, 68, 1),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0),
                      ),
                      Text(
                        "จำนวนเบอร์\n(เบอร์)",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: const Color.fromRGBO(70, 71, 68, 1),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "ผ่านเงื่อนไข",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: const Color.fromRGBO(70, 71, 68, 1),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0),
                      ),
                      Text(
                        "ไม่ผ่านเงื่อนไข",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: const Color.fromRGBO(70, 71, 68, 1),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0),
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                itemCount: widget.dataList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = widget.dataList[index];

                  // ตรวจสอบว่าแถวปัจจุบันขยายอยู่หรือไม่
                  final bool isRowExpanded = (expandedIndex == index);

                  return ExpandableDetailTable(
                    dateInfo: item['date'],
                    totalNumbers: item['total'],
                    passed: item['passed'],
                    failed: item['failed'],
                    details: List<Map<String, String>>.from(
                      item["details"] ?? [],
                    ),
                    isExpanded: isRowExpanded,
                    onTap: () {
                      setState(() {
                        if (expandedIndex == index) {
                          expandedIndex = null; // หากกดซ้ำแถวเดิมให้ปิด
                        } else {
                          expandedIndex = index; // เปลี่ยนเป็นแถวใหม่
                        }
                      });
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
