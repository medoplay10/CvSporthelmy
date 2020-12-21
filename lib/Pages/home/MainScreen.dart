import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF4F7FF),
      appBar: AppBar_MainScreen(Mediawidth, Mediaheight),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  color: Color(0xffE7EBF8),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: RowSearch(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RowListIcon(Mediawidth, Mediaheight),
            SizedBox(
              height: 10,
            ),
            CarouselNews(),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  "عن التطبيق",
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              height: 10,
            ),
            RowVideos(),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.85,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,

                child: Column(
                  children: [
                    NewsCards().RowShowNews(

                        MainImage: "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
                        IconClub: Icons.airplanemode_active_rounded,
                        NameClub: "Zamalek",
                        ContantNews: "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
                        TitalNews: "نادى الزمالك يحصل على اللاعب ميسى"
                    ),
                    Divider(height: 15, thickness: 2,),
                    NewsCards().RowShowNews(

                        MainImage: "https://upload.wikimedia.org/wikipedia/ar/thumb/f/fc/Al-Nassr_FC_Logo.svg/1200px-Al-Nassr_FC_Logo.svg.png",
                        IconClub: Icons.camera,
                        NameClub: "Al Naser",
                        ContantNews: "نادي النصر السعودي هو فريق كرة قدم سعودي تأسس عام 1955م الموافق 1375هـ، يُلقبْ الفريق من قبل مشجعيه بـالعالمي بسبب مشاركته وتمثيله لقارة آسيا في أول كأس العالم للأندية كرة القدم ",
                        TitalNews: "نادى النصر يحصل على اللاعب رونالدو"
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    btn_ExtraNews(context)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.85,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

//=============================== Widget AppBar_MainScreen ===========================

  AppBar AppBar_MainScreen(double Mediawidth, double Mediaheight) {
    return AppBar(
      backgroundColor: Color(0xffF4F7FF),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: IconButton(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              onPressed: () {}),
        )
      ],
      leading: Container(
        padding: EdgeInsets.all(5),
        width: (25 / Mediawidth) * Mediawidth,
        height: (25 / Mediaheight) * Mediaheight,
        child: ClipOval(
          child: Material(
            color: Color(0xffC7C9EA), // button color
            child: InkWell(
              splashColor: Colors.red, // inkwell color
              child: SizedBox(
                  child: Icon(
                    Icons.person,
                    color: Color(0xff68699C),
                    size: 20,
                  )),
              onTap: () {},
            ),
          ),
        ),
      ),
      elevation: 0,
      title: Text(
        "الرئيسة",
        style: TextStyle(fontSize: 18),
      ),
      centerTitle: true,
    );
  }

//=============================== Widget btn_ExtraNews ===========================

  Container btn_ExtraNews(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.78,
      height: 50,
      margin: EdgeInsets.only(bottom: 10),
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) {
                return MainScreen();
              }));
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)),
        color: Color(0xffA5B0CC),
        child: Text(
          "المزيد من الاخبار",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

//=============================== Widget RowShowNews ===========================


//=============================== Widget Row Videos ===========================

  Container RowVideos() {
    return Container(
      width: double.infinity,
      height: 230,
      color: Color(0xffE3E7F1),
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: listSport.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              margin: EdgeInsets.only(left: 8, right: 2),
              // padding: EdgeInsets.all(5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                      "https://aspergillosis.org/wp-content/uploads/2019/01/video-icon.jpg",
                      fit: BoxFit.cover)),
            );
          }),
    );
  }

//=============================== Widget Carousel News ===========================

  Container CarouselNews() {
    return Container(
        child: Column(
      children: [
        CarouselSlider.builder(
          itemCount: listSport.length,
          options: CarouselOptions(
              height: 140,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
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
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      listSport[index].UrlImage,
                      fit: BoxFit.cover,
                      height: 130,
                      width: 400,
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

//=============================== Widget Row Search ===========================

  Row RowSearch() {
    return Row(
      //    mainAxisAlignment:MainAxisAlignment.center ,
      children: [
        Icon(Icons.search),
        Expanded(
          child: TextFormField(
            style: TextStyle(fontSize: 16, color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffE7EBF8),
              border: InputBorder.none,
              hintText: "البحث",
              hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
          ),
        ),
        IconButton(icon: Icon(Icons.filter_alt), onPressed: null)
      ],
    );
  }

//=============================== Widget RowListIcon ===========================
  SizedBox RowListIcon(double Mediawidth, double Mediaheight) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
          itemCount: listSport.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 8, right: 2),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: (70 / Mediawidth) * Mediawidth,
                    height: (70 / Mediaheight) * Mediaheight,
                    child: ClipOval(
                      child: Material(
                        color: Color(0xffC7C9EA), // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(
                              child: Icon(
                            listSport[index].iconData,
                            color: Color(0xff68699C),
                            size: 20,
                          )),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                  Text(
                    listSport[index].Tital,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            );
          }),
    );
  }
}
