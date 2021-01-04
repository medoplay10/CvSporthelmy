import 'package:cv_sports/Pages/News/AllNewsScreen.dart';
import 'package:cv_sports/Widgets/SizeBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:cv_sports/Model/Coach.dart';
import 'package:cv_sports/Model/Players.dart';
import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Widgets/newsCards.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'MainScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  List<Players> listPlayer = [
    Players(
        UrlImage:
            "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1297x339:1299x337)/origin-imgresizer.eurosport.com/2020/11/03/2927687-60147708-2560-1440.jpg",
        name: "Messi",
        PlayerPlace: "attacker"),
    Players(
        UrlImage:
        "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1297x339:1299x337)/origin-imgresizer.eurosport.com/2020/11/03/2927687-60147708-2560-1440.jpg",
        name: "Messi",
        PlayerPlace: "attacker"),
    Players(
        UrlImage:
        "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1297x339:1299x337)/origin-imgresizer.eurosport.com/2020/11/03/2927687-60147708-2560-1440.jpg",
        name: "Messi",
        PlayerPlace: "attacker"),
    Players(
        UrlImage:
        "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1297x339:1299x337)/origin-imgresizer.eurosport.com/2020/11/03/2927687-60147708-2560-1440.jpg",
        name: "Messi",
        PlayerPlace: "attacker"),
  ];
  List<Coach> ListCoach = [
    Coach(
        name: "دييغو سيميوني",
        UrlImage:
        "https://www.skynewsarabia.com/images/v1/2019/09/14/1282832/800/450/1-1282832.jpg",
        CoachPlace: "atletico madrid"),
    Coach(
        name: "دييغو سيميوني",
        UrlImage:
        "https://www.skynewsarabia.com/images/v1/2019/09/14/1282832/800/450/1-1282832.jpg",
        CoachPlace: "atletico madrid"),
    Coach(
        name: "دييغو سيميوني",
        UrlImage:
        "https://www.skynewsarabia.com/images/v1/2019/09/14/1282832/800/450/1-1282832.jpg",
        CoachPlace: "atletico madrid"),
    Coach(
        name: "دييغو سيميوني",
        UrlImage:
        "https://www.skynewsarabia.com/images/v1/2019/09/14/1282832/800/450/1-1282832.jpg",
        CoachPlace: "atletico madrid"),
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.82,
              decoration: BoxDecoration(
                color: Color(0xffE7EBF8),
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: rowSearch(),
            ),
          ),
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
          rowListIcon(Mediawidth, Mediaheight),
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
          carouselNews(),
          SizeBoxHeight(
            SizeWant: 5,
            Mediaheight: Mediaheight,
          ),
          Container(
              margin: EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: Text(
                "عن التطبيق",
                style: TextStyle(fontSize: 18),
              )),
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
          rowVideos(),
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
          RowCardNews(context),
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
          cardMorePlayers(
              context: context,
              Mediawidth: Mediawidth,
              Mediaheight: Mediaheight,
              listPlayers: listPlayer),
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
          cardMoreCoach(
              context: context,
              Mediawidth: Mediawidth,
              Mediaheight: Mediaheight,
              listCoach: ListCoach),
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
        ],
      ),
    );
  }

  Card RowCardNews(BuildContext context) {
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
                    "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
                iconClub: Icons.airplanemode_active_rounded,
                nameClub: "Zamalek",
                contentNews:
                    "نادي الزمالك للألعاب الرياضية ‏، أو كما يعرف اختصاراً باسم نادي الزمالك، هو نادٍ رياضي مصري احترافي يلعب في الدوري المصري",
                titleNews: "نادى الزمالك يحصل على اللاعب ميسى"),
            Divider(
              height: 15,
              thickness: 2,
            ),
            NewsCard(
                mainImage:
                    "https://upload.wikimedia.org/wikipedia/ar/thumb/f/fc/Al-Nassr_FC_Logo.svg/1200px-Al-Nassr_FC_Logo.svg.png",
                iconClub: Icons.camera,
                nameClub: "Al Naser",
                contentNews:
                    "نادي النصر السعودي هو فريق كرة قدم سعودي تأسس عام 1955م الموافق 1375هـ، يُلقبْ الفريق من قبل مشجعيه بـالعالمي بسبب مشاركته وتمثيله لقارة آسيا في أول كأس العالم للأندية كرة القدم ",
                titleNews: "نادى النصر يحصل على اللاعب رونالدو"),
            SizedBox(
              height: 15,
            ),
            btnExtraNews(context)
          ],
        ),
      ),
    );
  }

  //=============================== Widget Card More Coach===========================

  Card cardMoreCoach(
      {BuildContext context,
      double Mediawidth,
      double Mediaheight,
      List<Coach> listCoach}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.32,
        alignment: Alignment.center,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE3E7F1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  //      color: Color(0xffF4F7FF),
                ),
                child: GridView.count(
                  childAspectRatio: .79,
                  primary: false,
                  shrinkWrap: true,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: columnMoreCoach(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          coachData: ListCoach[0]),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: columnMoreCoach(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          coachData: ListCoach[1]),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: columnMoreCoach(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          coachData: ListCoach[2]),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20))),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: columnMoreCoach(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          coachData: ListCoach[3]),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            containarCoach(context)
          ],
        ),
      ),
    );
  }

  //=============================== Widget containar Players ===========================

  Expanded containarCoach(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.32,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            color: Color(0xffE3E7F1),
          ),
          child: Column(
            children: [
              Text("المدربين"),
              Image.asset(
                "assets/images/CoachImage.png",
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.20,
                height: MediaQuery.of(context).size.height * 0.04,
                margin: EdgeInsets.only(bottom: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return MainScreen();
                    }));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: Color(0xffA5B0CC),
                  child: Text(
                    "المزيد",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )),
    );
  }

//=============================== Widget containar Players ===========================

  Expanded containarPlayers(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.32,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            color: Color(0xffE3E7F1),
          ),
          child: Column(
            children: [
              Text("اللاعبين"),
              Image.asset(
                "assets/images/Player.png",
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.20,
                height: 30,
                margin: EdgeInsets.only(bottom: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return MainScreen();
                    }));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: Color(0xffA5B0CC),
                  child: Text(
                    "المزيد",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )),
    );
  }

//=============================== Widget Card More Players ===========================

  Card cardMorePlayers({BuildContext context,
    double Mediawidth,
    double Mediaheight,
    List<Players> listPlayers}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.32,
        alignment: Alignment.center,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE3E7F1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  //      color: Color(0xffF4F7FF),
                ),
                child: GridView.count(
                  childAspectRatio: .79,
                  primary: false,
                  shrinkWrap: true,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: ColumnMorePlayer(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          DataPlayer: listPlayers[0]),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: ColumnMorePlayer(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          DataPlayer: listPlayers[1]),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: ColumnMorePlayer(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          DataPlayer: listPlayers[2]),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20))),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: ColumnMorePlayer(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          DataPlayer: listPlayers[3]),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            containarPlayers(context)
          ],
        ),
      ),
    );
  }

//=============================== Widget Column More Player ===========================

  Column ColumnMorePlayer({double Mediawidth, double Mediaheight, Players DataPlayer}) {
    return Column(
      children: [
        Container(
          //     padding: EdgeInsets.all(5),
          width: (70 / Mediawidth) * Mediawidth,
          height: (70 / Mediaheight) * Mediaheight,
          child: ClipOval(
            child: Material(
              color: Color(0xffC7C9EA), // button color
              child: InkWell(
                splashColor: Colors.red, // inkwell color
                child: Image.network(
                  DataPlayer.UrlImage,
                  fit: BoxFit.fill,
                ),
                onTap: () {},
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          DataPlayer.name,
          style: TextStyle(fontSize: 11),
        ),
        Text(
          DataPlayer.PlayerPlace,
          style: TextStyle(fontSize: 11),
        ),
      ],
    );
  }

//=============================== Widget Column More Player ===========================

  Column columnMoreCoach({double Mediawidth, double Mediaheight, Coach coachData}) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.all(2),
          width: (70 / Mediawidth) * Mediawidth,
          height: (70 / Mediaheight) * Mediaheight,
          child: ClipOval(
            child: Material(
              color: Color(0xffC7C9EA), // button color
              child: InkWell(
                splashColor: Colors.red, // inkwell color
                child: Image.network(
                  coachData.UrlImage,
                  fit: BoxFit.fill,
                ),
                onTap: () {},
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          coachData.name,
          style: TextStyle(fontSize: 11),
        ),
        Text(coachData.CoachPlace, style: TextStyle(fontSize: 11)),
      ],
    );
  }

//=============================== Widget AppBar_MainScreen ===========================

  AppBar appBarMainScreen(double Mediawidth, double Mediaheight) {
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
        width: MediaQuery.of(context).size.width * .06,
        height: MediaQuery.of(context).size.height * .03,
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

  Container btnExtraNews(BuildContext context) {
    return Container(
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
        color: Color(0xffA5B0CC),
        child: Text(
          "المزيد من الاخبار",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

//=============================== Widget Row Videos ===========================

  Container rowVideos() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .28,
      color: Color(0xffE3E7F1),
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: listSport.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height * .25,
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

  Container carouselNews() {
    return Container(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: listSport.length,
              options: CarouselOptions(
              height: MediaQuery.of(context).size.height * .25,
              aspectRatio: 16 / 9,
              viewportFraction: .95,
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
                      height: MediaQuery.of(context).size.height * .24,
                      width: MediaQuery.of(context).size.width,
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

  Row rowSearch() {
    return Row(
      //   mainAxisAlignment:MainAxisAlignment.center ,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Icon(Icons.search),
        ),
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
        IconButton(icon: FaIcon(
          FontAwesomeIcons.slidersH,
        ), onPressed: null)
      ],
    );
  }

//=============================== Widget RowListIcon ===========================
  SizedBox rowListIcon(double Mediawidth, double Mediaheight) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .15,
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
