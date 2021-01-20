import 'package:cv_sports/Pages/Category/OneCategory.dart';
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
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';
import 'MainScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Sports> listSport = [
    Sports(
        Tital: "اللاعبين",
        IconAssets: FontAwesomeIcons.running,
        iconData: "assets/images/91.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "اندية",
        IconAssets: FontAwesomeIcons.shieldAlt,
        iconData: "assets/images/92.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "مراكز التدريب",
        IconAssets: FontAwesomeIcons.dumbbell,
        iconData: "assets/images/93.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "اكاديميات",
        IconAssets: FontAwesomeIcons.warehouse,
        iconData: "assets/images/95.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "المدربين",
        IconAssets: FontAwesomeIcons.userTie,
        iconData: "assets/images/96.png",
        UrlImage: "assets/images/slider.png"),
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
  void initState() {
    Provider.of<ProviderConstants>(context, listen: false)
        .ChangeIndexTap(Value: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizeBoxHeight(
          //   SizeWant: 10,
          //   Mediaheight: Mediaheight,
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.07,
          //   width: MediaQuery.of(context).size.width * 0.82,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     border: Border.all(
          //       color: Colors.grey.shade300,
          //     ),
          //     borderRadius: BorderRadius.circular(25),
          //   ),
          //   child: rowSearch(),
          // ),
          SizeBoxHeight(
            SizeWant: 10,
            Mediaheight: Mediaheight,
          ),
          rowListIcon(Mediawidth, Mediaheight),

          Card(elevation: 5, child: carouselNews()),

          Container(
              margin: EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: Text(
                "شاهد",
                style: TextStyle(fontSize: 18),
              )),

          rowVideos(),

          RowCardNews(context),
          SizeBoxHeight(
            SizeWant: 5,
            Mediaheight: Mediaheight,
          ),
          cardMorePlayers(
              context: context,
              Mediawidth: Mediawidth,
              Mediaheight: Mediaheight,
              listPlayers: listPlayer),

          // cardMoreCoach(
          //     context: context,
          //     Mediawidth: Mediawidth,
          //     Mediaheight: Mediaheight,
          //     listCoach: ListCoach),
        ],
      ),
    );
  }

//=============================  Row Card News ==============================
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
            btnExtraNews(context)
          ],
        ),
      ),
    );
  }

  //=============================== Widget Card More Coach===========================

  Card cardMoreCoach({BuildContext context,
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
                  childAspectRatio: .81,
                  primary: false,
                  shrinkWrap: true,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 5),
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
                      padding: EdgeInsets.only(top: 5),
                      child: columnMoreCoach(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          coachData: ListCoach[1]),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
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
                      padding: EdgeInsets.only(top: 5),
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
                alignment: Alignment.center,
                //       margin: EdgeInsets.only(bottom: 10),
                //     padding: EdgeInsets.only(bottom: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return MainScreen();
                    }));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: Color(0xff2C2B53),
                  child: Column(
                    children: [
                      Text(
                        "المزيد",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
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
                height: MediaQuery.of(context).size.height * 0.04,
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return OneCategory(
                          isClub: false, itemSport: listSport[0]);
                    }));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: Color(0xff2C2B53),
                  child: Column(
                    children: [
                      Text(
                        "المزيد",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
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
                  childAspectRatio: .81,
                  primary: false,
                  shrinkWrap: true,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15),
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
                      padding: EdgeInsets.only(top: 15),
                      child: ColumnMorePlayer(
                          Mediawidth: Mediawidth,
                          Mediaheight: Mediaheight,
                          DataPlayer: listPlayers[1]),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
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
                      padding: EdgeInsets.only(top: 15),
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
          height: (60 / MediaQuery.of(context).size.height) *
              MediaQuery.of(context).size.height,
          width: (60 / MediaQuery.of(context).size.width) *
              MediaQuery.of(context).size.width,
          child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                DataPlayer.UrlImage,
              )),
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
          width: MediaQuery.of(context).size.width * .19,
          height: MediaQuery.of(context).size.height * .09,
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
        color: Color(0xff2C2B53),
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
      height: MediaQuery.of(context).size.height * .25,
      //    color: Color(0xffE3E7F1),
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: listSport.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height * .22,
              width: 250,
              margin: EdgeInsets.only(left: 8, right: 2),
              // padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                          "https://korabest.com/wp-content/uploads/2020/02/pizap.com15811498361372.jpg",
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text("هدف ريال مدريد اليوم")
                ],
              ),
            );
          }),
    );
  }

//=============================== Widget Carousel News ===========================

  Stack carouselNews() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.only(top: 8.0, right: 5),
          child: CarouselSlider.builder(
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
                      child: Column(
                        children: [
                          Image.asset(
                            listSport[index].UrlImage,
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.height * .24,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ],
                      )),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listSport.map((url) {
            int index = listSport.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.only(bottom: 25.0, right: 5),
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
    );
  }

//=============================== Widget Row Search ===========================

  Container rowSearch() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffE7EBF8),
      ),
      child: Row(
        //   mainAxisAlignment:MainAxisAlignment.center ,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            color: Color(0xffE7EBF8),
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.search,
              ),
            ),
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
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.slidersH,
              ),
              onPressed: () {})
        ],
      ),
    );
  }

//=============================== Widget RowListIcon ===========================
  SizedBox rowListIcon(double Mediawidth, double Mediaheight) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .125,
      child: ListView.builder(
          itemCount: listSport.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (index == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return OneCategory(
                      isClub: true,
                      itemSport: listSport[index],
                    );
                  }));
                } else {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return OneCategory(
                        isClub: false, itemSport: listSport[index]);
                  }));
                }
              },
              child: Container(
                margin: EdgeInsets.only(left: 8, right: 2),
                child: Column(
                  children: [
                    Container(
                      //   alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      width: (70 / Mediawidth) * Mediawidth,
                      height: (70 / Mediaheight) * Mediaheight,
                      child: ClipOval(
                        child: Material(
                          color: Color(0xff2C2B53), // button color
                          child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: Center(
                                child: Image.asset(
                                  listSport[index].iconData,
                                  scale: 3,
                                  color: Colors.white,
                                  //    size: 25,
                                ),
                              )),
                        ),
                      ),
                    ),
                    Text(
                      listSport[index].Tital,
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
