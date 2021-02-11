import 'package:cv_sports/Pages/News/AllNewsScreen.dart';
import 'package:flutter/material.dart';

import '../newsCards.dart';

class CardClubNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        alignment: Alignment.center,
        child: Column(
          children: [
            NewsCard(
                mainImage:
                "https://mediaaws.almasryalyoum.com/news/large/2020/02/21/1029211_0.jpg",
                iconClub:
                "https://upload.wikimedia.org/wikipedia/commons/5/58/Zamalek_SC_icon.png",
                nameClub: "الزمالك",
                contentNews:
                "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
                titleNews: "نادى الزمالك يحصل على اللاعب ميسى"),
            Divider(
              height: 15,
              thickness: 2,
            ),
            NewsCard(
                mainImage:
                "https://www.spa.gov.sa/image-resizer/h600/galupload/normal/202002/DST_1262787_1652739_202002091659179024.jpg",
                iconClub:
                "https://upload.wikimedia.org/wikipedia/ar/thumb/6/6f/Hilal_logo.png/180px-Hilal_logo.png",
                nameClub: "الهلال السعودى",
                contentNews:
                "نادي الهلال السعودي هو نادٍ رياضيّ، ثقافيّ، اجتماعيّ سعودي أُسس عام 1957، مقرّه في العاصمة السعودية الرياض ويعتبر الفريق الأول في السعودية من حيث عدد البطولات المحلية، وأكثر الأندية الآسيوية فوزاً بالبطولات القارية بمختلف مسمياتها، إذ تبلغ عدد بطولاته الرسمية على المستوى المحلي والإقليمي والقاري 65 بطولة، والإجمالية ...",
                titleNews: "نادى الهلال السعودى يحصل على اللاعب رونالدو"),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.78,
              height: MediaQuery.of(context).size.height * .06,
              margin: EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return AllNewsScreen();
                  }));
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                color: Color(0xff2C2B53),
                child: Text(
                  "المزيد من الاخبار",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
