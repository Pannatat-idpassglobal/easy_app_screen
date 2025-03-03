import 'package:flutter/material.dart';

class CardInfoRow extends StatelessWidget {
  final String title;
  final String date;
  final String imagePath;

  // Constructor เพื่อรับค่าจากภายนอก
  const CardInfoRow({
    Key? key,
    required this.title,
    required this.date,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 68,
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
            // รูปด้านซ้าย (แสดงรูปจากพาธ imagePath ที่รับเข้ามา)
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            const SizedBox(width: 8),
            
            // ข้อความตรงกลาง (title และ date)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start, // จัดให้ตรงกลางแนวตั้ง
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 1.4,  // line-height
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(94, 95, 91, 1),
                    fontWeight: FontWeight.w700,
                    height: 1.4,  // line-height
                  ),
                ),
              ],
            ),

            // ปุ่มลูกศรด้านขวา
            const Spacer(),
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(184, 244, 22, 1), // สีเขียวอ่อนตามต้องการ
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.chevron_right,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
