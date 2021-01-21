import 'package:cv_sports/Model/Sports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyImagesDataProfile extends StatelessWidget {
  List<Sports> listSport = [
    Sports(
        Tital: "كرة قدم",
        iconData: "assets/images/1.png",
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "تنس",
        iconData: "assets/images/2.png",
        UrlImage:
            "https://1440sportz.com/wp-content/uploads/2020/07/Nike-Football-3.jpg"),
    Sports(
        Tital: "كرة سلة",
        iconData: "assets/images/3.png",
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "بيسبول",
        iconData: "assets/images/4.png",
        UrlImage:
            "https://1440sportz.com/wp-content/uploads/2020/07/Nike-Football-3.jpg"),
    Sports(
        Tital: "كرة يد",
        iconData: "assets/images/5.png",
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
        backgroundColor: Color(0xffF9FAFF),
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "معرض الصور",
              style: TextStyle(fontSize: ScreenUtil().setSp(15)),
            ),
            Text(
              "خالد عمرو",
              style: TextStyle(fontSize: ScreenUtil().setSp(14)),
            )
          ],
        ),
      ),
      body: GridImages(),
    );
  }

  Container GridImages() {
    return Container(
      height: double.infinity,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: GridView.builder(
        itemCount: listSport.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 20.0, mainAxisSpacing: 16.0),
        primary: false,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Material(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0, color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      listSport[index].UrlImage,
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
