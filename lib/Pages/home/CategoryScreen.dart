import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Pages/Category/OneCategory.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NotificationScreen.dart';

class CategoryScreen extends StatelessWidget {
  List<Sports> listSport = [
    Sports(
        Tital: "كرة قدم",
        iconData: FontAwesomeIcons.footballBall,
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "كرة قدم",
        iconData: FontAwesomeIcons.footballBall,
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
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
        Tital: "كرة قدم",
        iconData: FontAwesomeIcons.footballBall,
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "كرة قدم",
        iconData: FontAwesomeIcons.footballBall,
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
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
    var Mediaheight = MediaQuery
        .of(context)
        .size
        .height;
    var Mediawidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF4F7FF),

        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return NotificationScreen();
                      }));
                }),
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
          "الاقسام",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Container(
          color: Color(0xffF9FAFF),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.85,
                  decoration: BoxDecoration(
                    color: Color(0xffE7EBF8),
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: rowSearch(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              rowListIcon(Mediawidth, Mediaheight),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: GridView.builder(
                  itemCount: listSport.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 8.0),
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return OneCategory();
                        }));
                      },
                      child: Material(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                            padding: EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0, color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            child: columnMoreData(
                                Mediaheight: Mediaheight,
                                Mediawidth: Mediawidth,
                                SportData: listSport[index])),
                      ),
                    );
                  },
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  //=============================== Widget Row Search ===========================

  Row rowSearch() {
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
  SizedBox rowListIcon(double Mediawidth, double Mediaheight) {
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

  //=============================== Widget Column More Player ===========================

  Column columnMoreData(
      {double Mediawidth, double Mediaheight, Sports SportData}) {
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
                  SportData.UrlImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          SportData.Tital,
          style: TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}
