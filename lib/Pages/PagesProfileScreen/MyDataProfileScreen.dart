import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../ProviderAll.dart';

class MyDataProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              alignment: Alignment.centerRight,
              child: Text("الجوائز")),
          CardAwards(context),
          Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              alignment: Alignment.centerRight,
              child: Text("الميداليات")),
          CardMedals(context),
          Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              alignment: Alignment.centerRight,
              child: Text("وسائل التواصل")),
          RowSocialMediaCards(context),
          Container(
              margin: EdgeInsets.only(right: 20, top: 10),
              alignment: Alignment.centerRight,
              child: Text("صورى")),
          CardMyImages(context),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  //======================= Widget Row Social Media Cards ==============================

  Container RowSocialMediaCards(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.09,
      margin: EdgeInsets.only(bottom: 8),
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
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/trophy.png"),
                        Text("الدوري السعودي"),
                        Text("8")
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/trophy.png"),
                        Text("الدوري السعودي"),
                        Text("8")
                      ],
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
              child: Text("+10"),
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
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/medal.png"),
                        Text("افضل لاعب"),
                        Text("8")
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/medal.png"),
                        Text("افضل صانع لعب"),
                        Text("8")
                      ],
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
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          "https://ronaldo.com/wp-content/uploads/2020/03/GettyImages-1201273079-1208205794-1209769370.jpg",
                          height: 200,
                          fit: BoxFit.fill,
                        ),
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
}
