import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F7FF),
      appBar: AppbarBuild(),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        // color: Color(0xffF4F7FF),
        child: Column(
          children: [
            Center(child: CardMedals(context)),
            Center(child: CardMedals(context)),
          ],
        ),
      ),
    );
  }

  AppBar AppbarBuild() {
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
      elevation: 0,
      title: Text(
        "الاشعارات",
        style: TextStyle(fontSize: 18),
      ),
      centerTitle: true,
    );
  }

  Container CardMedals(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
          color: Color(0xffF4F7FF),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 0)),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          //   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xffF4F7FF),
                  border: Border.all(width: 0, color: Color(0xffF2F4FF)),
                  borderRadius: BorderRadius.circular(40)),
              child: FaIcon(
                FontAwesomeIcons.microphoneAlt,
                size: 40, //
                color: Color(0xffA4AEC6),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "محادثة جديدة",
                        style: TextStyle(fontSize: 16),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text("لديك محادثة جديدة من الاعلامي توفيق حسين",
                            maxLines: 2,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 12,
                            ))),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "July 20.2020 (08:00 pm)",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.grey.shade500),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
