import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/screen/top_up_system/top_up_system.dart';
import 'package:flutter/material.dart';

class CardInfoCondition extends StatefulWidget {
  final String title;
  final String all_sim_numbers;
  final String pass_sim_numbers;
  final String failed_numbers;
  final String imagePath;
  // parameter onTap เพื่อรับฟังก์ชันเมื่อกด
  final VoidCallback? onTap;

  // Constructor เพื่อรับค่าจากภายนอก
  const CardInfoCondition({
    Key? key,
    required this.title,
    required this.all_sim_numbers,
    required this.pass_sim_numbers,
    required this.failed_numbers,
    required this.imagePath,
    this.onTap,
  }) : super(key: key);

  @override
  State<CardInfoCondition> createState() => _CardInfoConditionState();
}

class _CardInfoConditionState extends State<CardInfoCondition> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap ??
          () {
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const TopUpSystem(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0); // เริ่มจากขวา
                  const end = Offset.zero;
                  const curve = Curves.ease;
                  final tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));
                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              ),
            );
          },
      child: Container(
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
                // Text(
                //   'ไม่ผ่านเงื่อนไขการแสดงตน',
                //   style: Theme.of(context).textTheme.bodySmall?.copyWith(
                //       color: Color.fromRGBO(0, 0, 0, 1),
                //       fontWeight: FontWeight.w400,
                //       height: 1.1),
                // ),
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
                  '${widget.pass_sim_numbers} เบอร์',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Color.fromRGBO(95, 130, 0, 1),
                        fontWeight: FontWeight.w700,
                      ),
                ),
                // Text(
                //    '${widget.failed_numbers} เบอร์',
                //   style: Theme.of(context).textTheme.bodySmall?.copyWith(
                //       color: Color.fromRGBO(207, 19, 28, 11),
                //       fontWeight: FontWeight.w400,
                //       height: 1),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
