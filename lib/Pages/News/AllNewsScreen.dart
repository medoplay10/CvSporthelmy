import 'package:cv_sports/Model/News.dart';
import 'package:cv_sports/Widgets/newsCards.dart';
import 'package:flutter/material.dart';

class AllNewsScreen extends StatelessWidget {
  List<News> ListNews = [
    News(
      NameClub: "Zamalek",
      IconClub: Icons.airplanemode_active_rounded,
      contentNews:
          "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
      titleNews: "نادى الزمالك يحصل على اللاعب ميسى",
      ImageUrl: "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
    ),
    News(
      NameClub: "Al Naser",
      IconClub: Icons.camera,
      contentNews:
          "نادي النصر السعودي هو فريق كرة قدم سعودي تأسس عام 1955م الموافق 1375هـ، يُلقبْ الفريق من قبل مشجعيه بـالعالمي بسبب مشاركته وتمثيله لقارة آسيا في أول كأس العالم للأندية كرة القدم ",
      titleNews: "نادى النصر يحصل على اللاعب رونالدو",
      ImageUrl:
          "https://upload.wikimedia.org/wikipedia/ar/thumb/f/fc/Al-Nassr_FC_Logo.svg/1200px-Al-Nassr_FC_Logo.svg.png",
    ),
    News(
      NameClub: "Zamalek",
      IconClub: Icons.airplanemode_active_rounded,
      contentNews:
          "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
      titleNews: "نادى الزمالك يحصل على اللاعب ميسى",
      ImageUrl: "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
    ),
    News(
      NameClub: "Al Naser",
      IconClub: Icons.camera,
      contentNews:
          "نادي النصر السعودي هو فريق كرة قدم سعودي تأسس عام 1955م الموافق 1375هـ، يُلقبْ الفريق من قبل مشجعيه بـالعالمي بسبب مشاركته وتمثيله لقارة آسيا في أول كأس العالم للأندية كرة القدم ",
      titleNews: "نادى النصر يحصل على اللاعب رونالدو",
      ImageUrl:
          "https://upload.wikimedia.org/wikipedia/ar/thumb/f/fc/Al-Nassr_FC_Logo.svg/1200px-Al-Nassr_FC_Logo.svg.png",
    ),
    News(
      NameClub: "Zamalek",
      IconClub: Icons.airplanemode_active_rounded,
      contentNews:
          "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
      titleNews: "نادى الزمالك يحصل على اللاعب ميسى",
      ImageUrl: "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
    ),
    News(
      NameClub: "Al Naser",
      IconClub: Icons.camera,
      contentNews:
          "نادي النصر السعودي هو فريق كرة قدم سعودي تأسس عام 1955م الموافق 1375هـ، يُلقبْ الفريق من قبل مشجعيه بـالعالمي بسبب مشاركته وتمثيله لقارة آسيا في أول كأس العالم للأندية كرة القدم ",
      titleNews: "نادى النصر يحصل على اللاعب رونالدو",
      ImageUrl:
          "https://upload.wikimedia.org/wikipedia/ar/thumb/f/fc/Al-Nassr_FC_Logo.svg/1200px-Al-Nassr_FC_Logo.svg.png",
    ),
    News(
      NameClub: "Zamalek",
      IconClub: Icons.airplanemode_active_rounded,
      contentNews:
          "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
      titleNews: "نادى الزمالك يحصل على اللاعب ميسى",
      ImageUrl: "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
    ),
    News(
      NameClub: "Al Naser",
      IconClub: Icons.camera,
      contentNews:
          "نادي النصر السعودي هو فريق كرة قدم سعودي تأسس عام 1955م الموافق 1375هـ، يُلقبْ الفريق من قبل مشجعيه بـالعالمي بسبب مشاركته وتمثيله لقارة آسيا في أول كأس العالم للأندية كرة القدم ",
      titleNews: "نادى النصر يحصل على اللاعب رونالدو",
      ImageUrl:
          "https://upload.wikimedia.org/wikipedia/ar/thumb/f/fc/Al-Nassr_FC_Logo.svg/1200px-Al-Nassr_FC_Logo.svg.png",
    ),
    News(
      NameClub: "Zamalek",
      IconClub: Icons.airplanemode_active_rounded,
      contentNews:
          "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
      titleNews: "نادى الزمالك يحصل على اللاعب ميسى",
      ImageUrl: "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
    ),
    News(
      NameClub: "Al Naser",
      IconClub: Icons.camera,
      contentNews:
          "نادي النصر السعودي هو فريق كرة قدم سعودي تأسس عام 1955م الموافق 1375هـ، يُلقبْ الفريق من قبل مشجعيه بـالعالمي بسبب مشاركته وتمثيله لقارة آسيا في أول كأس العالم للأندية كرة القدم ",
      titleNews: "نادى النصر يحصل على اللاعب رونالدو",
      ImageUrl:
          "https://upload.wikimedia.org/wikipedia/ar/thumb/f/fc/Al-Nassr_FC_Logo.svg/1200px-Al-Nassr_FC_Logo.svg.png",
    ),
    News(
      NameClub: "Zamalek",
      IconClub: Icons.airplanemode_active_rounded,
      contentNews:
          "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
      titleNews: "نادى الزمالك يحصل على اللاعب ميسى",
      ImageUrl: "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
    ),
    News(
      NameClub: "Al Naser",
      IconClub: Icons.camera,
      contentNews:
          "نادي النصر السعودي هو فريق كرة قدم سعودي تأسس عام 1955م الموافق 1375هـ، يُلقبْ الفريق من قبل مشجعيه بـالعالمي بسبب مشاركته وتمثيله لقارة آسيا في أول كأس العالم للأندية كرة القدم ",
      titleNews: "نادى النصر يحصل على اللاعب رونالدو",
      ImageUrl:
          "https://upload.wikimedia.org/wikipedia/ar/thumb/f/fc/Al-Nassr_FC_Logo.svg/1200px-Al-Nassr_FC_Logo.svg.png",
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
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.82,
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
            );
          }),
    );
  }
}
