import 'dart:math';

import 'package:flutter/material.dart';

class ExpandableDetailTable extends StatefulWidget {
  final String dateInfo;
  final int totalNumbers;
  final int passed;
  final int failed;
  final List<Map<String, String>> details; // ข้อมูลในตารางขยาย

  const ExpandableDetailTable({
    Key? key,
    required this.dateInfo,
    required this.totalNumbers,
    required this.passed,
    required this.failed,
    required this.details,
  }) : super(key: key);

  @override
  State<ExpandableDetailTable> createState() => _ExpandableDetailTableState();
}

class _ExpandableDetailTableState extends State<ExpandableDetailTable> {
  bool isExpanded = false; // เช็คว่ากำลังขยายหรือไม่

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: isExpanded ? Color.fromRGBO(237, 255, 186, 1) : Colors.white,
          border: Border(
              bottom: BorderSide(color: Color.fromRGBO(226, 227, 225, 1))),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            // แถวหลักที่กดเพื่อขยาย
            InkWell(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Container(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 44,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              widget.dateInfo,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Color.fromRGBO(27, 28, 25, 1),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0),
                            ),
                            Text(
                              '${widget.totalNumbers}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Color.fromRGBO(27, 28, 25, 1),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0),
                            ),
                            Text(
                              '${widget.passed}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Color.fromRGBO(27, 28, 25, 1),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0),
                            ),
                            Text(
                              '${widget.failed}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Color.fromRGBO(27, 28, 25, 1),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10.33, // ชิดขอบบน
                        right: 10.33, // ชิดขอบขวา
                        child: Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 24,
                          color: Color.fromRGBO(67, 92, 0, 1),
                        ),
                      ),
                    ],
                  ),
                )),
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
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          border: Border(
                              bottom: BorderSide(
                            color: Color.fromRGBO(226, 227, 225, 1),
                          )),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'เบอร์',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Color.fromRGBO(94, 95, 91, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            Text(
                              'ไม่ผ่านเงื่อนไข',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Color.fromRGBO(94, 95, 91, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            Text(
                              'ประเภทซิม',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Color.fromRGBO(94, 95, 91, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: widget.details
                              .map(
                                (data) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          data['number'] ?? '',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: Color.fromRGBO(
                                                    27, 28, 25, 1),
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          data['status'] ?? '',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: data['status'] ==
                                                        'ไม่ผ่านเงื่อนไข'
                                                    ? Color.fromRGBO(
                                                        207, 19, 28, 1)
                                                    : Color.fromRGBO(
                                                        95, 130, 0, 1),
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: Color.fromRGBO(
                                                    27, 28, 25, 1),
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                        // child:
                      )
                    ],
                  ),
                ),
              ),

            // ตารางรายละเอียดที่ขยาย
          ],
        ),
      ),
    );
  }
}
