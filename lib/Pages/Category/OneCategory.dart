import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Pages/home/NotificationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'AddNewItemInCategoryScreen.dart';
import 'MakeNewClubScreen.dart';
import 'PlayerInfomation.dart';

class OneCategory extends StatelessWidget {
  bool isClub;

  Sports itemSport;

  OneCategory({this.isClub = false, @required this.itemSport});

  List<Sports> listSport = [
    Sports(
        Tital: "ميسى",
        iconData: "assets/images/1.png",
        UrlImage: "assets/images/messiRonaldo.jpg"),
    Sports(
        Tital: "رونالدو",
        iconData: "assets/images/2.png",
        UrlImage: "assets/images/messiRonaldo.jpg"),
    Sports(
        Tital: "محمد صلاح",
        iconData: "assets/images/3.png",
        UrlImage: "assets/images/messiRonaldo.jpg"),
    Sports(
        Tital: "محمد شريف",
        iconData: "assets/images/4.png",
        UrlImage: "assets/images/messiRonaldo.jpg"),
    Sports(
        Tital: "نيمار",
        iconData: "assets/images/5.png",
        UrlImage: "assets/images/messiRonaldo.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        //     padding:EdgeInsets.only(left: 100) ,
        // alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topLeft, fit: BoxFit.fitWidth,
            image: AssetImage(
              "assets/images/design2edit.png",
            ),
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

  GestureDetector columnMoreData(
      {double Mediawidth,
      double Mediaheight,
      Sports SportData,
      BuildContext context}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return PlayerInformation();
        }));
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(2),
              width: (70 / Mediawidth) * Mediawidth,
              height: (70 / Mediaheight) * Mediaheight,
              child: ClipOval(
                child: Material(
                  color: Color(0xffC7C9EA), // button color
                  child: Image.asset(
                    SportData.UrlImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: (5 / MediaQuery.of(context).size.height) *
                  MediaQuery.of(context).size.height,
            ),
            Text(
              SportData.Tital,
              style: TextStyle(fontSize: 11),
            ),
            Text(
              "مهاجم",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
