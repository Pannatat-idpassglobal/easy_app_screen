import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  // รับ widget ลูกเข้ามา เพื่อมาแสดงผลข้างใน
  final Widget child;

  const CardInfo({
    Key? key,
    required this.child, // ต้องการ widget เสมอ
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 0.0,bottom: 8,left: 16,right: 16 ),
        child: Container(
          // height: 169,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(27, 28, 25, 0.07),
                blurRadius: 16,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [child],
          ),
        ));
  }
}
