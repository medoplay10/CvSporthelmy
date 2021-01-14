import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Pages/home/NotificationScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'AddNewItemInCategoryScreen.dart';
import 'MakeNewClubScreen.dart';

class OneCategory extends StatelessWidget {
  bool isClub;

  Sports itemSport;

  OneCategory({this.isClub = false, @required this.itemSport});

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
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xffF4F7FF),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(5),
      //       child: IconButton(
      //           icon: Icon(
      //             Icons.notifications,
      //             size: 30,
      //           ),
      //           onPressed: () {
      //             Navigator.of(context).push(
      //                 MaterialPageRoute(builder: (context) {
      //                   return NotificationScreen();
      //                 }));
      //           }),
      //     )
      //   ],
      //   elevation: 0,
      //   title: Text(
      //     "كرة القدم",
      //     style: TextStyle(fontSize: 18),
      //   ),
      //   centerTitle: true,
      // ),
      backgroundColor: Color(0xffFAFBFF),
      body: Container(
        //     padding:EdgeInsets.only(left: 100) ,
        // alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topLeft,

            image: AssetImage(
              "assets/images/designOneCategory.png",),
            //fit: BoxFit.fitWidth,
          ),
          //     shape: BoxShape.circle,
        ),
        child: Column(
          children: [

            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (isClub == false) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return AddNewItemInCategoryScreen();
                      }));
                    } else {
                      //MakeNewClubScreen
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return MakeNewClubScreen();
                      }));
                    }
                  },
                  child: Icon(
                    Icons.add_circle,
                    color: Color(0xff5E5D8F),
                    size: 30,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "كرة القدم",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(itemSport.Tital),
                    ],
                  ),
                  width: (300 / MediaQuery.of(context).size
                      .width) * MediaQuery
                      .of(context)
                      .size
                      .width,

                ),
                IconButton(
                  icon: Icon(Icons.arrow_back_outlined), onPressed: () {
                  Navigator.pop(context);
                }, iconSize: 30,)
              ],),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.82,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: rowSearch(),
            ),

            Expanded(
              child: GridView.builder(
                itemCount: listSport.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0),
                primary: false,

                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Material(
                    color: Color(0xffE7EBF8),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 0, color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: columnMoreData(
                            context: context,
                            Mediaheight: Mediaheight,
                            Mediawidth: Mediawidth,
                            SportData: listSport[index])),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
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
              fillColor: Colors.white,
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
    );
  }

  //=============================== Widget Column More Player ===========================

  Column columnMoreData({double Mediawidth, double Mediaheight, Sports SportData, BuildContext context}) {
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
                onTap: () {},
              ),
            ),
          ),
        ),
        SizedBox(
          height: (5 / MediaQuery
              .of(context)
              .size
              .height) * MediaQuery
              .of(context)
              .size
              .height,
        ),
        Text(
          SportData.Tital,
          style: TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}
