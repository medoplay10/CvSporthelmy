import 'package:cv_sports/Widgets/SentDataButtom.dart';
import 'package:flutter/material.dart';

class AddPost_Image_video extends StatefulWidget {
  @override
  _AddPost_Image_videoState createState() => _AddPost_Image_videoState();
}

class _AddPost_Image_videoState extends State<AddPost_Image_video> {
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
          "اضافة منشور",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewPost(),
            addNewImage(),
            addNewVideo(),
            //   Spacer(),
            SentDataButtom()
          ],
        ),
      ),
    );
  }

  //================== add new post =============================
  Widget NewPost() {
    return Column(
      children: [
        Container(
          height: (195 / MediaQuery.of(context).size.height) *
              MediaQuery.of(context).size.height,
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
        // Spacer(),
        // SentDataButtom()
      ],
    );
  }

  //=============================== Widget add New Image===========================

  Column addNewImage() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            children: [
              Text("اضافة صور"),
              SizedBox(
                width: (10 / MediaQuery.of(context).size.width) *
                    MediaQuery.of(context).size.width,
              ),
              Text(
                "(3 صور بحد اقصى)",
                style: TextStyle(color: Color(0xff8D8D8D)),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: (150 / MediaQuery.of(context).size.width) *
              MediaQuery.of(context).size.width,
          //  color: Color(0xffE3E7F1),
          padding: EdgeInsets.all(0),
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    height: (140 / MediaQuery.of(context).size.height) *
                        MediaQuery.of(context).size.height,
                    margin: EdgeInsets.only(left: 8, right: 2),
                    // padding: EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                            "https://static.thenounproject.com/png/558475-200.png",
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
      ],
    );
  }

  //=============================== Widget add New Video ===========================

  Column addNewVideo() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            children: [
              Text("اضافة فديو"),
              SizedBox(
                width: (10 / MediaQuery.of(context).size.width) *
                    MediaQuery.of(context).size.width,
              ),
              Text(
                "(فديو واحد كحد اقصى)",
                style: TextStyle(color: Color(0xff8D8D8D)),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: (150 / MediaQuery.of(context).size.width) *
              MediaQuery.of(context).size.width,
          //  color: Color(0xffE3E7F1),
          padding: EdgeInsets.all(0),

          child: ListView.builder(
              itemCount: 1,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    height: (140 / MediaQuery.of(context).size.height) *
                        MediaQuery.of(context).size.height,
                    margin: EdgeInsets.only(left: 8, right: 2),
                    // padding: EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                            "https://static.thenounproject.com/png/381172-200.png",
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
