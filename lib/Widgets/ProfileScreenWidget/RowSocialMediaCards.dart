import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowSocialMediaCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
