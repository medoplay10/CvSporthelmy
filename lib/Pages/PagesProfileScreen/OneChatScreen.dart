import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OneChatScreen extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF), //F9FAFF
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              margin: EdgeInsets.all(0),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                child: Column(
                  children: [
                    ListTile(
                      trailing: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.longArrowAltLeft,
                          color: Color(0xff8C8C8C),
                        ),
                        onPressed: () {},
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
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
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                "https://i.stack.imgur.com/l60Hf.png",
                              )),
                        ],
                      ),
                      leading: FaIcon(
                        FontAwesomeIcons.ellipsisV,
                        color: Color(0xff8C8C8C),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Massages(),
                  ],
                ),
              ),
            ),
            RowEditNewComment(context)
          ],
        ),
      ),
    );
  }

  //=============================== Widget Massages list===========================

  Container Massages() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //   color:Color(0xffE9EBF2),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "اهلا خالد اود ان اعمل معك لقاء صحفى تبرز فية موهبتك وانجازاتك مع نادي النصر",
                style: TextStyle(color: Color(0xff303030)),
              ),
              decoration: BoxDecoration(
                  //E9EBF2
                  color: Color(0xffE9EBF2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xffE9EBF2)))),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "02:21PM",
                style: TextStyle(color: Color(0xff767676)),
              ))
        ],
      ),
    );
  }

  //=============================== Widget Row Edit New Comment===========================

  Container RowEditNewComment(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  maxLines: null,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  controller: textEditingController,
                  onChanged: (value) {
                    // setState(() {
                    //   InputText = value;
                    // });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 14),
                    hintText: "اكتب رسالتك هنا",
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward,
              )
            ],
          ),
        ),
      ),
    );
  }
}
