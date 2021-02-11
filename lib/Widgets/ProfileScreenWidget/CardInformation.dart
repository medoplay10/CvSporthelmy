import 'package:flutter/material.dart';

class CardInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  title: "تاريخ الميلاد",
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
                  title: "النادى/الاكاديمية",
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
                  color: Color(0xff68699C),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(title, style: TextStyle(fontSize: 14)),
              ],
            ),
            Text(
              content,
              style: TextStyle(fontSize: 14, color: Color(0xff2C2B53)),
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
}
