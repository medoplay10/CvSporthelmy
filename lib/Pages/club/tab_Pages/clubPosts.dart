import 'package:flutter/material.dart';
import 'package:cv_sports/Widgets/newsCards.dart';

class ClubPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/slider.png'),
            NewsCard(
              mainImage:
                  'https://arabic.sport360.com/wp-content/uploads/2020/10/%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83.jpg',
              titleNews: 'بطل الدوري يستعد لـ "الوحدة"',
              contentNews:
                  'أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه "الوحدة”….',
              nameClub: 'الوحدة',
              iconClub: Icons.airplanemode_active_rounded,
            ),
            NewsCard(
              mainImage:
                  'https://arabic.sport360.com/wp-content/uploads/2020/10/%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83.jpg',
              titleNews: 'بطل الدوري يستعد لـ "الوحدة"',
              contentNews:
                  'أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه "الوحدة”….',
              nameClub: 'الوحدة',
              iconClub: Icons.airplanemode_active_rounded,
            ),
            NewsCard(
              mainImage:
                  'https://arabic.sport360.com/wp-content/uploads/2020/10/%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83.jpg',
              titleNews: 'بطل الدوري يستعد لـ "الوحدة"',
              contentNews:
                  'أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه "الوحدة”….',
              nameClub: 'الوحدة',
              iconClub: Icons.airplanemode_active_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
