import 'package:cv_sports/Pages/PagesProfileScreen/OnePostScreen.dart';
import 'package:cv_sports/Pages/auth/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';
import 'MainScreen.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  String testContext =
      "أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة.أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة….أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة”….";

  @override
  void initState() {
    Provider.of<ProviderConstants>(context, listen: false)
        .ChangeIndexTap(Value: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffF9FAFF),
        elevation: 0,
        title: Text(
          "المنشورات",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 3,
        padding: EdgeInsets.only(top: 10),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return OnePostScreen();
                }));
              },
              child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: RowPostsCards(context)));
        },
      ),
    );
  }

//=============================== Widget Row Posts Cards===========================

  Column RowPostsCards(BuildContext context) {
    return Column(
      children: [
        ImageAndTextProfile(),
        Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Color(0xffC1C0D3),
                    ),
                    Text("19 Oct 2020")
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: Text(
                    testContext,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 12),
                    maxLines: null,
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidComment,
                          color: Color(0xffC1C0D3),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("33")
                      ],
                    ),
                    Spacer(),
                    // Row(
                    //   children: [
                    //     Text("33"),
                    //     SizedBox(
                    //       width: 5,
                    //     ),
                    //     FaIcon(
                    //       FontAwesomeIcons.solidThumbsDown,
                    //       color: Color(0xffC1C0D3),
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   width: (30 / MediaQuery
                    //       .of(context)
                    //       .size
                    //       .width) * MediaQuery
                    //       .of(context)
                    //       .size
                    //       .width,
                    // ),
                    Row(
                      children: [
                        Text("33"),
                        SizedBox(
                          width: 5,
                        ),
                        FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Color(0xffC1C0D3),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  //======================= Widget Image And Text Profile ==============================
  Container ImageAndTextProfile() {
    return Container(
      margin: EdgeInsets.only(right: 28),
      child: Row(
        children: [
          Container(
            height: (40 / MediaQuery.of(context).size.height) *
                MediaQuery.of(context).size.height,
            width: (40 / MediaQuery.of(context).size.width) *
                MediaQuery.of(context).size.width,
            child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
                backgroundImage: AssetImage("assets/images/imageprofile.png")),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "خالد عمر",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
