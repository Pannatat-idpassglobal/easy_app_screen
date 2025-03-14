import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ExpandableDetailTable extends StatelessWidget {
  final String dateInfo;
  final int totalNumbers;
  final int passed;
  final int failed;
  final List<Map<String, String>> details; // ข้อมูลในตารางขยาย

  /// สอง props ใหม่ที่เพิ่มเข้ามา
  final bool isExpanded;
  final VoidCallback onTap;

  const ExpandableDetailTable({
    Key? key,
    required this.dateInfo,
    required this.totalNumbers,
    required this.passed,
    required this.failed,
    required this.details,
    required this.isExpanded,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: isExpanded ? const Color.fromRGBO(237, 255, 186, 1) : Colors.white,
          border: const Border(
            bottom: BorderSide(color: Color.fromRGBO(226, 227, 225, 1)),
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            // แถวหลักที่กดเพื่อขยาย
            InkWell(
              onTap: onTap,
              child: Stack(
                children: [
                  SizedBox(
                    height: 44,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          dateInfo,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: const Color.fromRGBO(27, 28, 25, 1),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0,
                              ),
                        ),
                        Text(
                          '$totalNumbers',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: const Color.fromRGBO(27, 28, 25, 1),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0,
                              ),
                        ),
                        Text(
                          '$passed',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: const Color.fromRGBO(27, 28, 25, 1),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0,
                              ),
                        ),
                        Text(
                          '$failed',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: const Color.fromRGBO(27, 28, 25, 1),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10.33, // ชิดขอบบน
                    right: 10.33, // ชิดขอบขวา
                    child: Icon(
                      isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 24,
                      color: const Color.fromRGBO(67, 92, 0, 1),
                    ),
                  ),
                ],
              ),
            ),

            // ขยายรายละเอียดเฉพาะเมื่อ isExpanded = true
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Column(
                    children: [
                      // หัวข้อของตาราง
                      Container(
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          border: const Border(
                            bottom: BorderSide(
                              color: Color.fromRGBO(226, 227, 225, 1),
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'เบอร์',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: const Color.fromRGBO(94, 95, 91, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            Text(
                              'ไม่ผ่านเงื่อนไข',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: const Color.fromRGBO(94, 95, 91, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            Text(
                              'ประเภทซิม',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: const Color.fromRGBO(94, 95, 91, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: details.map((data) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      data['number'] ?? '',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: const Color.fromRGBO(27, 28, 25, 1),
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      data['status'] ?? '',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: (data['status'] == 'ไม่ผ่านเงื่อนไข')
                                                ? const Color.fromRGBO(207, 19, 28, 1)
                                                : const Color.fromRGBO(95, 130, 0, 1),
                                            height: 1.5,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      data['simType'] ?? '',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: const Color.fromRGBO(27, 28, 25, 1),
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
