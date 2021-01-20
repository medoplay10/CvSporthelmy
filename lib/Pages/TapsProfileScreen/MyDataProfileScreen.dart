import 'package:cv_sports/Pages/SubScreen/MyImagesDataProfile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../ProviderAll.dart';

class MyDataProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CardInformation(context),
          Container(
              margin: EdgeInsets.only(right: 20, top: 5),
              alignment: Alignment.centerRight,
              child: Text("الجوائز")),
          CardAwards(context),
          Container(
              margin: EdgeInsets.only(right: 20, top: 5),
              alignment: Alignment.centerRight,
              child: Text("الميداليات")),
          CardMedals(context),
          Container(
              margin: EdgeInsets.only(right: 20, top: 0),
              alignment: Alignment.centerRight,
              child: Text("وسائل التواصل")),
          RowSocialMediaCards(context),
          Container(
              margin: EdgeInsets.only(right: 20, top: 5),
              alignment: Alignment.centerRight,
              child: Text("صورى")),
          CardMyImages(context),
          SizedBox(
            height: (10 / MediaQuery.of(context).size.height) *
                MediaQuery.of(context).size.height,
          )
        ],
      ),
    );
  }

  Container CardInformation(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      // height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
          //   color: BackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Card(
        margin: EdgeInsets.only(top: 10),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              RowInformation(
                  title: "تاريخ الولادة",
                  content: "24/10/1985",
                  iconTitle: Icons.calendar_today),
              RowInformation(
                  title: "الجنسية", content: "سعودي", iconTitle: Icons.flag),
              RowInformation(
                  title: "المدينة",
                  content: "الرياض",
                  iconTitle: Icons.location_on_rounded),
              RowInformation(
                  title: "الطول", content: "184", iconTitle: Icons.height),
              RowInformation(
                  title: "الوزن", content: "76", iconTitle: Icons.anchor),
              RowInformation(
                  title: "النادي",
                  content: "اتحاد جدة",
                  iconTitle: Icons.person),
              RowInformation(
                  title: "ممارسة اللعبة",
                  content: "يمين",
                  iconTitle: Icons.sports),
              RowInformation(
                  title: "بداية العقد",
                  content: "24/10/1985",
                  iconTitle: Icons.calendar_today),
              RowInformation(
                  title: "نهاية العقد",
                  content: "24/10/1985",
                  iconTitle: Icons.calendar_today),
            ],
          ),
        ),
      ),
    );
  }

  Column RowInformation({String title, var iconTitle, String content}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconTitle,
                  color: Color(0xff2C2B53),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(title, style: TextStyle(fontSize: 16)),
              ],
            ),
            Text(
              content,
              style: TextStyle(fontSize: 16, color: Color(0xff929292)),
            ),
          ],
        ),
        Divider(
          height: 10,
          color: Colors.grey,
        )
      ],
    );
  }

  //======================= Widget Row Social Media Cards ==============================

  Container RowSocialMediaCards(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.09,
      margin: EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(
          //    color: BackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.twitter,
                color: Color(0xff21A9F4),
              ),
              onPressed: () {},
              iconSize: 30,
            ),
            IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Color(0xffFFDD55),
                ),
                onPressed: () {},
                iconSize: 30),
            IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Color(0xff1977F2),
                ),
                //FFEB3B
                onPressed: () {},
                iconSize: 30),
            IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.snapchatGhost,
                  color: Color(0xffFFEB3B),
                ),
                onPressed: () {},
                iconSize: 30),
          ],
        ),
      ),
    );
  }

  //======================= Widget Card Awards ==============================

  Container CardAwards(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        //   color: BackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/trophy.png",
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text("الدوري السعودي"),
                          Text("8")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: (20 / MediaQuery.of(context).size.width) *
                          MediaQuery.of(context).size.width,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/trophy.png",
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text("الدوري السعودي"),
                          Text("8")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => displayBottomSheet(context),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                    color: Color(0xffE7EBF8),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                //         height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width * 0.15,
                child: Text("+10"),
              ),
            )
          ],
        ),
      ),
    );
  }

  //======================= Widget Card Medals ==============================

  Container CardMedals(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        //     color: BackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/medal.png",
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text("افضل لاعب"),
                          Text("8")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: (20 / MediaQuery.of(context).size.width) *
                          MediaQuery.of(context).size.width,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/medal.png",
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text("افضل صانع لعب"),
                          Text("8")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                  color: Color(0xffE7EBF8),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white)),
              //         height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width * 0.15,
              child: Text("+2"),
            )
          ],
        ),
      ),
    );
  }

  //======================= Widget Card MyImages ==============================

  Container CardMyImages(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        //    color: BackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          "https://ronaldo.com/wp-content/uploads/2020/03/GettyImages-1201273079-1208205794-1209769370.jpg",
                          height: (200 / MediaQuery.of(context).size.height) *
                              MediaQuery.of(context).size.height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: (20 / MediaQuery.of(context).size.width) *
                          MediaQuery.of(context).size.width,
                    ),
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          "https://ronaldo.com/wp-content/uploads/2020/03/GettyImages-1201273079-1208205794-1209769370.jpg",
                          height: (200 / MediaQuery.of(context).size.height) *
                              MediaQuery.of(context).size.height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MyImagesDataProfile();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                    color: Color(0xffE7EBF8),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                //         height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width * 0.15,
                child: Text("+2"),
              ),
            )
          ],
        ),
      ),
    );
  }

  //============================Widget - displayBottomSheet ==================================

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
      //  isDismissible: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        context: context,
        builder: (ctx) {
          return Container(
            // height: MediaQuery
            //     .of(context)
            //     .size
            //     .height * 0.6,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "الجوائز",
                    style: TextStyle(fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      trailing: Text("3"),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "توفيق حسين",
                                // textAlign:TextAlign.left ,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade700),
                              ),
                              Text(
                                "اعلامي",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      leading: Image.asset("assets/images/trophy.png"),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      trailing: Text("3"),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "توفيق حسين",
                                // textAlign:TextAlign.left ,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade700),
                              ),
                              Text(
                                "اعلامي",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      leading: Image.asset("assets/images/trophy.png"),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      trailing: Text("3"),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "توفيق حسين",
                                // textAlign:TextAlign.left ,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade700),
                              ),
                              Text(
                                "اعلامي",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      leading: Image.asset("assets/images/trophy.png"),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
