import 'package:cv_sports/Model/Sports.dart';
import 'package:flutter/material.dart';

class RowVideos extends StatelessWidget {
 final List<Sports> listSport;

  RowVideos({@required this.listSport});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: MediaQuery.of(context).size.height * .25,
      //    color: Color(0xffE3E7F1),
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: listSport.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height * .22,
              width: MediaQuery.of(context).size.width * .62,
              margin: EdgeInsets.only(left: 8, right: 2),
              // padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                          "https://korabest.com/wp-content/uploads/2020/02/pizap.com15811498361372.jpg",
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text("هدف ريال مدريد اليوم")
                ],
              ),
            );
          }),
    );
  }
}
