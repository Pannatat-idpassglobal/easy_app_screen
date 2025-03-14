import 'package:easy_app_sreen_reports/src/presentation/widgets/report_tabbar_menu/performance_screen/screen/top_up_system/top_up_system.dart';
import 'package:flutter/material.dart';

class CardInfoTopUp extends StatefulWidget {
  final String title;
  final String numbers;
  final String imagePath;
  // Constructor เพื่อรับค่าจากภายนอก
  const CardInfoTopUp({
    Key? key,
    required this.title,
    required this.numbers,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<CardInfoTopUp> createState() => _CardInfoTopUpState();
}

class _CardInfoTopUpState extends State<CardInfoTopUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
