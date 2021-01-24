import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Pages/home/NotificationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';
import 'AddNewPlayerScreen.dart';
import 'AddNewClubScreen.dart';
import 'AddnewUserScreen.dart';
import 'PlayerInfomation.dart';

class OneCategory extends StatelessWidget {
  bool isClub;
  bool isPlayer;
  Sports itemSport;

  OneCategory(
      {this.isClub = false, this.isPlayer = false, @required this.itemSport});

  List<Sports> listSport = [
    Sports(
        Tital: "ميسى",
        iconData: "assets/images/1.png",
        UrlImage: "assets/images/imageprofile.png"),
    Sports(
        Tital: "رونالدو",
        iconData: "assets/images/2.png",
        UrlImage: "assets/images/imageprofile.png"),
    Sports(
        Tital: "محمد صلاح",
        iconData: "assets/images/3.png",
        UrlImage: "assets/images/imageprofile.png"),
    Sports(
        Tital: "محمد شريف",
        iconData: "assets/images/4.png",
        UrlImage: "assets/images/imageprofile.png"),
    Sports(
        Tital: "نيمار",
        iconData: "assets/images/5.png",
        UrlImage: "assets/images/imageprofile.png"),
  ];

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppbarOneCategory(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "كرة القدم" + " - ",
                style: TextStyle(fontSize: ScreenUtil().setSp(16)),
              ),
              Text(itemSport.Tital,
                  style: TextStyle(fontSize: ScreenUtil().setSp(14))),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: listSport.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 15.0,
                    childAspectRatio: 0.82,
                    mainAxisSpacing: 15.0),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
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
            ),
          )
        ],
      ),
    );
  }

//======================== Appbar OneCategory =========================
  AppBar AppbarOneCategory(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffF9FAFF),
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              if (isPlayer == true) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AddNewPlayerScreen();
                }));
              } else if (isClub == true) {
                //MakeNewClubScreen
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AddNewClubScreen();
                }));
              } else {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AddnewUserScreen();
                }));
              }
            },
            child: Icon(
              Icons.add_circle,
              color: Color(0xff5E5D8F),
              size: 30,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffEEF1FC),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffEEF1FC),
                    ),
                    //    color: Color(0xffE7EBF8),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(14),
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0, right: 10),
                        filled: true,
                        fillColor: Color(0xffEEF1FC),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        //         border: InputBorder.none,
                        hintText: "البحث",

                        hintStyle: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(right: 5),
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
              ),
            ),
          ),
//           IconButton(
//               icon: Icon(
//
//                 Icons.notifications_none,
//
//                 size: 30,
//               ),
// alignment: Alignment.centerLeft,
//
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) {
//                   return NotificationScreen();
//                 }));
//               })
        ],
      ),
      centerTitle: true,
    );
  }

  //=============================== Widget Row Search ===========================

  Container rowSearch(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffEEF1FC),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffEEF1FC),
            ),
            //    color: Color(0xffE7EBF8),
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.search,
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 0, right: 10),
                filled: true,
                fillColor: Color(0xffEEF1FC),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                //         border: InputBorder.none,
                hintText: "البحث",

                hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade700),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //=============================== Widget Column More Player ===========================

  GestureDetector columnMoreData(
      {double Mediawidth,
      double Mediaheight,
      Sports SportData,
      BuildContext context}) {
    return GestureDetector(
      onTap: () {
        Provider.of<ProviderConstants>(context, listen: false)
            .ChangeIndexTap(Value: 0);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return PlayerInformation();
        }));
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(2),
              width: .16 * Mediawidth,
              height: .075 * Mediaheight,
              child: ClipOval(
                child: Material(
                  color: Colors.transparent, // button color
                  child: Image.asset(
                    SportData.UrlImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              SportData.Tital,
              style: TextStyle(fontSize: ScreenUtil().setSp(11)),
            ),
            Text(
              "مهاجم",
              style: TextStyle(fontSize: ScreenUtil().setSp(12)),
            ),
          ],
        ),
      ),
    );
  }
}
