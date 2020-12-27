import 'package:cv_sports/Widgets/SentDataButtom.dart';
import 'package:flutter/material.dart';

class addSummaryProfile extends StatefulWidget {
  @override
  _addSummaryProfileState createState() => _addSummaryProfileState();
}

class _addSummaryProfileState extends State<addSummaryProfile> {
  TextEditingController textEditingController = TextEditingController();

  int maxLengthEnd = 255;

  int maxLengthStart = 255;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF9FAFF),
        centerTitle: true,
        title: Text(
          "اضافة او تعديل السيرة الذاتية",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: TextField(
              textAlign: TextAlign.start,
              maxLines: null,
              maxLength: maxLengthStart,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Colors.black,
              ),
              controller: textEditingController,
              onChanged: (value) {
                setState(() {
                  maxLengthEnd = maxLengthStart - value.length;
                });
              },
              decoration: InputDecoration(
                counterText: "",
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 14),
                hintText: "اكتب  هنا",
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Text(maxLengthEnd.toString()),
          ),
          Spacer(),
          SentDataButtom()
        ],
      ),
    );
  }
}
