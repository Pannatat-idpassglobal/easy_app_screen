import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/screen/top_up_system/top_up_system.dart';
import 'package:flutter/material.dart';

class CardInfoCondition extends StatefulWidget {
  final String title;
  final String allSimNumbers;
  final String passSimNumbers;
  final String failedNumbers;
  final String imagePath;
  final VoidCallback? onTap;

  const CardInfoCondition({
    Key? key,
    this.title = 'ข้อมูลซิม', // ค่าเริ่มต้น
    this.allSimNumbers = '',
    this.passSimNumbers = '',
    this.failedNumbers = '',
    this.imagePath = 'assets/default.png', // ค่าเริ่มต้นของรูปภาพ
    this.onTap,
  }) : super(key: key);

  @override
  State<CardInfoCondition> createState() => _CardInfoConditionState();
}

class _CardInfoConditionState extends State<CardInfoCondition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
         decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromRGBO(226, 227, 225, 1),
              width: 1,
            ),
          ),
        ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Color.fromRGBO(27, 28, 25, 1),
                    fontWeight: FontWeight.w700,
                    height: 1.0),
              ),
              if (widget.failedNumbers.isNotEmpty)
              Text(
                'ไม่ผ่านเงื่อนไขการแสดงตน',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w400,
                    height: 1.1),
              ),
              Text(
                'ข้อมูล ณ วันที่ 25 พ.ย. 67',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Color.fromRGBO(119, 120, 116, 1),
                    fontWeight: FontWeight.w400,
                    height: 1.1),
              ),
              SizedBox(height: 8,)
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              '${widget.passSimNumbers} เบอร์',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Color.fromRGBO(95, 130, 0, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (widget.failedNumbers.isNotEmpty)
              Text(
                '${widget.failedNumbers} เบอร์',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Color.fromRGBO(207, 19, 28, 11),
                  fontWeight: FontWeight.w400,
                  height: 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
