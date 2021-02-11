import 'package:cv_sports/Pages/SubScreen/MyImagesDataProfile.dart';
import 'package:cv_sports/Widgets/ProfileScreenWidget/CardInformation.dart';
import 'package:cv_sports/Widgets/ProfileScreenWidget/CardMyImages.dart';
import 'package:cv_sports/Widgets/ProfileScreenWidget/RowSocialMediaCards.dart';
import 'package:cv_sports/Widgets/ProfileScreenWidget/cardPrize.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../ProviderAll.dart';

class MyDataProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CardInformation(),
          Container(
              margin: EdgeInsets.only(right: 20, top: 10),
              alignment: Alignment.centerRight,
              child: Text("الجوائز")),
          //CardAwards(context),
          CardPrize(imagePrize: "assets/images/trophy.png", namePrize: "الدورى المصرى",numPrize: 5,totalPrize: 10,),
          Container(
              margin: EdgeInsets.only(right: 20, top: 10),
              alignment: Alignment.centerRight,
              child: Text("الميداليات")),
          CardPrize(imagePrize: "assets/images/medal.png", namePrize: "افضل لاعب فى العالم",numPrize: 5,totalPrize: 10,),
          Container(
              margin: EdgeInsets.only(right: 20, top: 10),
              alignment: Alignment.centerRight,
              child: Text("وسائل التواصل")),
          RowSocialMediaCards(),
          Container(
              margin: EdgeInsets.only(right: 20, top: 10),
              alignment: Alignment.centerRight,
              child: Text("صورى")),
          CardMyImages(),

        ],
      ),
    );
  }







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
