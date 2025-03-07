import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/screen/top_up_system/top_up_system.dart';
import 'package:flutter/material.dart';

class CardInfoConditionDetails extends StatefulWidget {
  final String all_sim_numbers;
  final String pass_sim_numbers;
  final String failed_numbers;
  // parameter onTap เพื่อรับฟังก์ชันเมื่อกด
  final VoidCallback? onTap;

  // Constructor เพื่อรับค่าจากภายนอก
  const CardInfoConditionDetails({
    Key? key,
    required this.all_sim_numbers,
    required this.pass_sim_numbers,
    required this.failed_numbers,
    this.onTap,
  }) : super(key: key);

  @override
  State<CardInfoConditionDetails> createState() =>
      _CardInfoConditionDetailsState();
}

class _CardInfoConditionDetailsState extends State<CardInfoConditionDetails> {
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ทั้งหมด',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(70, 71, 68, 1),
                      fontWeight: FontWeight.w400,
                      height: 1),
                ),
                Text(
                  '${widget.all_sim_numbers} ซิม',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(width: 1, color: Color.fromRGBO(226, 227, 225, 1)),
                  right: BorderSide(width: 1, color:  Color.fromRGBO(226, 227, 225, 1)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'ผ่านเงื่อนไข',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Color.fromRGBO(70, 71, 68, 1),
                          fontWeight: FontWeight.w400,
                          height: 1),
                    ),
                    Text(
                      '${widget.pass_sim_numbers} ซิม',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Color.fromRGBO(95, 130, 0, 1),
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ไม่ผ่านเงื่อนไข',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(70, 71, 68, 1),
                      fontWeight: FontWeight.w400,
                      height: 1),
                ),
                Text(
                  '${widget.failed_numbers} ซิม',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color.fromRGBO(207, 19, 28, 1),
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
