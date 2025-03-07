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
      padding:
          const EdgeInsets.only(left: 16.0, top: 12, right: 16, bottom: 16),
      child: Container(
        height: 63,
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
              width: 40,
              height: 40,
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
              mainAxisAlignment:
                  MainAxisAlignment.start, // จัดให้ตรงกลางแนวตั้ง
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color.fromRGBO(37, 51, 0, 1),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  date,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Color.fromRGBO(94, 95, 91, 1),
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),

            // ปุ่มลูกศรด้านขวา
            const Spacer(),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(
                    184, 244, 22, 1), // สีเขียวอ่อนตามต้องการ
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.chevron_right,
                color: Color.fromRGBO(37, 51, 0, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
