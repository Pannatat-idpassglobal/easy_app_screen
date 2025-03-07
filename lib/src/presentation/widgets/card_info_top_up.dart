import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/screen/top_up_system/top_up_system.dart';
import 'package:flutter/material.dart';

class CardInfoTopUp extends StatefulWidget {
  final String title;
  final String numbers;
  final String imagePath;
  // parameter onTap เพื่อรับฟังก์ชันเมื่อกด
  final VoidCallback? onTap;

  // Constructor เพื่อรับค่าจากภายนอก
  const CardInfoTopUp({
    Key? key,
    required this.title,
    required this.numbers,
    required this.imagePath,
    this.onTap,
  }) : super(key: key);

  @override
  State<CardInfoTopUp> createState() => _CardInfoTopUpState();
}

class _CardInfoTopUpState extends State<CardInfoTopUp> {
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
          children: [
            Container(
              width: 24,
              height: 24,
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
              mainAxisAlignment:
                  MainAxisAlignment.start, // จัดให้ตรงกลางแนวตั้ง
              children: [
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(27, 28, 25, 1),
                      fontWeight: FontWeight.bold,
                      // height: 1
                      ),
                ),
                Text(
                  '${widget.numbers} เบอร์',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Color.fromRGBO(95, 130, 0, 1),
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
