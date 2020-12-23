import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv_sports/Model/Sports.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OneNewsScreen extends StatefulWidget {
  @override
  _OneNewsScreenState createState() => _OneNewsScreenState();
}

class _OneNewsScreenState extends State<OneNewsScreen> {
  int _current = 0;

  List<Sports> listSport = [
    Sports(
        Tital: "كرة قدم",
        iconData: FontAwesomeIcons.footballBall,
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "تنس",
        iconData: FontAwesomeIcons.tableTennis,
        UrlImage:
            "https://1440sportz.com/wp-content/uploads/2020/07/Nike-Football-3.jpg"),
    Sports(
        Tital: "كرة سلة",
        iconData: FontAwesomeIcons.basketballBall,
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "بيسبول",
        iconData: FontAwesomeIcons.baseballBall,
        UrlImage:
            "https://1440sportz.com/wp-content/uploads/2020/07/Nike-Football-3.jpg"),
    Sports(
        Tital: "كرة يد",
        iconData: FontAwesomeIcons.baseballBall,
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "الكرة الطائرة",
        iconData: FontAwesomeIcons.volleyballBall,
        UrlImage:
            "https://1440sportz.com/wp-content/uploads/2020/07/Nike-Football-3.jpg"),
    Sports(
        Tital: "بولو الماء",
        iconData: FontAwesomeIcons.water,
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFBFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFAFBFF),
        centerTitle: true,
        elevation: 0,
        title: Text("تفاصيل الخبر"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              carouselNews(),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 5,
                        ),
                        Text("الاهلي المصري")
                      ],
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 3),
                        child: Text(
                          "الحديث عن الدرع ما زال مبكرًا",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 16),
                        )),
                    SizedBox(
                      height: (20 / MediaQuery.of(context).size.height) *
                          MediaQuery.of(context).size.height,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 3),
                        child: Text(
                          "كورونا تضرب الأهلى والزمالك قبل قمة 28 ديسمبر فى الدورى.. طارق حامد ومحمود علاء أحدث الضحايا.. مخاوف من عدم لحاق السولية وربيعة وقفشة بالمباراة.. موسيمانى يواصل العزل الصحى.. والجبلاية تؤكد لا تأجيل للقطبين",
                          textAlign: TextAlign.right,
                          maxLines: null,
                          style: TextStyle(color: Colors.grey.shade600),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //=============================== Widget Carousel News ===========================

  Container carouselNews() {
    return Container(
        child: Column(
      children: [
        CarouselSlider.builder(
          itemCount: listSport.length,
          options: CarouselOptions(
              height: (160 / MediaQuery
                  .of(context)
                  .size
                  .height) * MediaQuery
                  .of(context)
                  .size
                  .height,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          itemBuilder: (ctx, index) {
            return Container(
              child: SingleChildScrollView(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      listSport[index].UrlImage,
                      fit: BoxFit.cover,
                      height: (150 / MediaQuery
                          .of(context)
                          .size
                          .height) * MediaQuery
                          .of(context)
                          .size
                          .height,
                      width: (400 / MediaQuery
                          .of(context)
                          .size
                          .width) * MediaQuery
                          .of(context)
                          .size
                          .width,
                    )),
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listSport.map((url) {
            int index = listSport.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        )
      ],
    ));
  }
}
