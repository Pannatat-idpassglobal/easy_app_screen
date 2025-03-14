import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/screen/top_up_system/top_up_system.dart';
import 'package:flutter/material.dart';

class CardInfoConditionPostpaid extends StatefulWidget {
  final String newRegister;
  final String mnp;
  final String convert;
  // parameter onTap เพื่อรับฟังก์ชันเมื่อกด
  final VoidCallback? onTap;

  // Constructor เพื่อรับค่าจากภายนอก
  const CardInfoConditionPostpaid({
    Key? key,
    required this.newRegister,
    required this.mnp,
    required this.convert,
    this.onTap,
  }) : super(key: key);

  @override
  State<CardInfoConditionPostpaid> createState() =>
      _CardInfoConditionPostpaidState();
}

class _CardInfoConditionPostpaidState extends State<CardInfoConditionPostpaid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
      // กำหนดให้แต่ละส่วนกินพื้นที่เท่า ๆ กัน
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _buildRegisterItem(
            context,
            title: 'จดทะเบียน\nเบอร์ใหม่',
            value: widget.newRegister,
          ),
        ),
        // เส้นคั่นกลางตั้งแนวตั้ง
        const VerticalDivider(
          color: Color.fromRGBO(226, 227, 225, 1),
          thickness: 1,
          width: 1, 
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(width: 1, color: Color.fromRGBO(226, 227, 225, 1)),
              right: BorderSide(width: 1, color: Color.fromRGBO(226, 227, 225, 1)),
            ),
          ),
          child: Expanded(
            child: _buildRegisterItem(
              context,
              title: 'ย้ายค่ายเบอร์เดิม',
              value: widget.mnp,
            ),
          ),
        ),
        // เส้นคั่นกลางตั้งแนวตั้ง
        const VerticalDivider(
          color: Color.fromRGBO(226, 227, 225, 1),
          thickness: 1,
          width: 1,
        ),
        Expanded(
          child: _buildRegisterItem(
            context,
            title: 'เปลี่ยนเติมเงิน\nเป็นรายเดือน',
            value: widget.convert,
          ),
        ),
      ],
    )
    );
  }
}


  /// ฟังก์ชันย่อยสำหรับสร้าง Widget ในแต่ละคอลัมน์
  Widget _buildRegisterItem(
    BuildContext context, {
    required String title,
    required String value,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 48,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: const Color.fromRGBO(7, 28, 25, 1),
                  fontWeight: FontWeight.w400,
                  height: 1.2, // กำหนดให้ตัวหนังสืออ่านง่ายขึ้น
                ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 36,
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: const Color.fromRGBO(7, 28, 25, 1),
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ],
    );
  }

