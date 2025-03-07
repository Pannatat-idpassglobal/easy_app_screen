import 'package:flutter/material.dart';

class SaleInfoDataWidget extends StatelessWidget {
  // คอลัมน์ซ้าย
  final String leftLine1;
  final String leftLine2;
  final String leftLine3;
  final String leftLine4;

  // คอลัมน์ขวาที่ 1
  final String rightCol1Title;
  final String rightCol1Value1;
  final String rightCol1Value2;
  final String rightCol1Value3;

  // คอลัมน์ขวาที่ 2
  final String rightCol2Title;
  final String rightCol2Value1;
  final String rightCol2Value2;
  final String rightCol2Value3;

  const SaleInfoDataWidget({
    Key? key,
    // กำหนดให้บังคับ (required) หรือใส่ค่า default ก็ได้
    this.leftLine1 = '',
    required this.leftLine2,
    required this.leftLine3,
    required this.leftLine4,
    required this.rightCol1Title,
    required this.rightCol1Value1,
    required this.rightCol1Value2,
    required this.rightCol1Value3,
    required this.rightCol2Title,
    required this.rightCol2Value1,
    required this.rightCol2Value2,
    required this.rightCol2Value3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // หากต้องการกำหนดสีพื้นหลังหรือ border ก็ใส่ Decoration เพิ่มได้
      // decoration: BoxDecoration(...),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -------------------- คอลัมน์ซ้าย --------------------
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                leftLine1,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                leftLine2,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                leftLine3,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                leftLine4,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),

          // ดันให้ไปฝั่งขวา
          const Spacer(),

          // -------------------- คอลัมน์ขวาที่ 1 --------------------
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                rightCol1Title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(119, 120, 116, 1),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                rightCol1Value1,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                rightCol1Value2,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                rightCol1Value3,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),

          const Spacer(),

          // -------------------- คอลัมน์ขวาที่ 2 --------------------
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                rightCol2Title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(119, 120, 116, 1),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                rightCol2Value1,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                rightCol2Value2,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                rightCol2Value3,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(7, 28, 25, 1),
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
