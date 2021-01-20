import 'package:cv_sports/Model/News.dart';
import 'package:cv_sports/Widgets/newsCards.dart';
import 'package:flutter/material.dart';

import 'OneNewsScreen.dart';

class AllNewsScreen extends StatelessWidget {
  List<News> ListNews = [
    News(
      NameClub: "الزمالك",
      IconClub:
          "https://upload.wikimedia.org/wikipedia/commons/5/58/Zamalek_SC_icon.png",
      contentNews:
          "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
      titleNews: "نادى الزمالك يحصل على اللاعب ميسى",
      ImageUrl:
          "https://mediaaws.almasryalyoum.com/news/large/2020/02/21/1029211_0.jpg",
    ),
    News(
      NameClub: "الهلال السعودى",
      IconClub:
          "https://upload.wikimedia.org/wikipedia/ar/thumb/6/6f/Hilal_logo.png/180px-Hilal_logo.png",
      contentNews:
          "نادي الهلال السعودي هو نادٍ رياضيّ، ثقافيّ، اجتماعيّ سعودي أُسس عام 1957، مقرّه في العاصمة السعودية الرياض ويعتبر الفريق الأول في السعودية من حيث عدد البطولات المحلية، وأكثر الأندية الآسيوية فوزاً بالبطولات القارية بمختلف مسمياتها، إذ تبلغ عدد بطولاته الرسمية على المستوى المحلي والإقليمي والقاري 65 بطولة، والإجمالية ...",
      titleNews: "نادى الهلال السعودى يحصل على اللاعب رونالدو",
      ImageUrl:
          "https://www.spa.gov.sa/image-resizer/h600/galupload/normal/202002/DST_1262787_1652739_202002091659179024.jpg",
    ),
    News(
      NameClub: "الزمالك",
      IconClub:
          "https://upload.wikimedia.org/wikipedia/commons/5/58/Zamalek_SC_icon.png",
      contentNews:
          "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
      titleNews: "نادى الزمالك يحصل على اللاعب ميسى",
      ImageUrl:
          "https://mediaaws.almasryalyoum.com/news/large/2020/02/21/1029211_0.jpg",
    ),
    News(
      NameClub: "الهلال السعودى",
      IconClub:
          "https://upload.wikimedia.org/wikipedia/ar/thumb/6/6f/Hilal_logo.png/180px-Hilal_logo.png",
      contentNews:
          "نادي الهلال السعودي هو نادٍ رياضيّ، ثقافيّ، اجتماعيّ سعودي أُسس عام 1957، مقرّه في العاصمة السعودية الرياض ويعتبر الفريق الأول في السعودية من حيث عدد البطولات المحلية، وأكثر الأندية الآسيوية فوزاً بالبطولات القارية بمختلف مسمياتها، إذ تبلغ عدد بطولاته الرسمية على المستوى المحلي والإقليمي والقاري 65 بطولة، والإجمالية ...",
      titleNews: "نادى الهلال السعودى يحصل على اللاعب رونالدو",
      ImageUrl:
          "https://www.spa.gov.sa/image-resizer/h600/galupload/normal/202002/DST_1262787_1652739_202002091659179024.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4E8F2),
      appBar: AppBar(
        backgroundColor: Color(0xffE4E8F2),
        centerTitle: true,
        elevation: 0,
        title: Text("كل الاخبار"),
      ),
      body: ListView.builder(
          itemCount: ListNews.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return OneNewsScreen();
                    }));
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.82,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.center,
                  child: NewsCard(
                    contentNews: ListNews[index].contentNews,
                    iconClub: ListNews[index].IconClub,
                    mainImage: ListNews[index].ImageUrl,
                    nameClub: ListNews[index].NameClub,
                    titleNews: ListNews[index].titleNews,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
