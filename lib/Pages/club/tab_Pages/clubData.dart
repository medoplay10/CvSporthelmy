import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClubData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('وسائل التواصل'),
        rowSocialMediaCards(context),
        Text(
          'هو نادٍ رياضي مصري محترف في محافظة القاهرة يلعب في الدوري المصري الممتاز، وهو النادي الوحيد في مصر بجانب نادي الزمالك الذي لم يهبط إلى دوري الدرجة الثانية. تأسَّس النادي الأهلي بتاريخ 24 أبريل 1907 على يد العديد من كبارِ الشخصيات في مصر مثل عمر لطفي بك وأمين سامي باشا ومصطفى كامل وطلعت حرب، وتأسَّس كنادٍ للشباب الوطنيين المصريين، ومنذ إِنشائه اجتمع فيه المصريون لقضاء أوقاتهم وممارسة الرِيَاضة، وبعد ذلك أنشئ مجلس إدارة النادي الأهلي برئاسة الإنجليزي ميشيل إِنِس، وفي 1909 أُسِّس أول ملعب كرة قدم في تاريخ النادي وسُمِّيَ حينها باسم (الحُوش)، وتطور هذا الملعب حتَّى أصبح بمُسمَّاه الحالي (ملعب مختار التتش)، وأُنشئ أول فريق كرة قدم عام 1911، ووصل عدد الألعاب داخل النادي الأهلي عام 1916 إلى 4 ألعاب هي كرة القدم والتنس والبلياردو والجمباز. ويحمل النادي الأهلي منافسة قوية مع نادي الزمالك، واللذان يعتبران قطبي الكرة المصرية، وتعرف مبارياتهم باسم ديربي القاهرة أو مباراة القمَّة.',
          textAlign: TextAlign.center,
          maxLines: null,
        )
      ],
    );
  }
}

Container rowSocialMediaCards(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.85,
    height: MediaQuery.of(context).size.height * 0.09,
    margin: EdgeInsets.only(bottom: 8),
    decoration: BoxDecoration(
        //    color: BackgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white)),
    child: Card(
      margin: EdgeInsets.all(0),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.twitter,
              color: Color(0xff21A9F4),
            ),
            onPressed: () {},
            iconSize: 30,
          ),
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                color: Color(0xffFFDD55),
              ),
              onPressed: () {},
              iconSize: 30),
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                color: Color(0xff1977F2),
              ),
              //FFEB3B
              onPressed: () {},
              iconSize: 30),
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.snapchatGhost,
                color: Color(0xffFFEB3B),
              ),
              onPressed: () {},
              iconSize: 30),
        ],
      ),
    ),
  );
}
