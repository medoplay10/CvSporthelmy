import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnePostScreen extends StatelessWidget {
  String testContext =
      "أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة.أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة….أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة”….";
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75.0),
          child: Column(
            children: [
              ImageAndTextProfile(context),
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        actions: [
          InkWell(
            onTap: () => displayBottomSheet(context),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FaIcon(
                FontAwesomeIcons.ellipsisV,
                color: Color(0xff5E5D8F),
              ),
            ),
          )
        ],
      ), // color: Color(0xff5E5D8F),
      body: Column(
        children: [
          MainPostCard(context),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  OneComment(),
                  OneComment(),
                ],
              ),
            ),
          ),
          RowEditNewComment(context)
        ],
      ),
    );
  }

  //=============================== Widget One Comment===========================

  Column OneComment() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "https://i.stack.imgur.com/l60Hf.png",
                      )),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text(
                      "باسم على",
                      style: TextStyle(fontSize: 15),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }

  //======================= Widget Image And Text Profile ==============================
  Center ImageAndTextProfile(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: (50 / MediaQuery.of(context).size.height) *
                MediaQuery.of(context).size.height,
            width: (50 / MediaQuery.of(context).size.width) *
                MediaQuery.of(context).size.width,
            child: CircleAvatar(
                radius: 20,
                backgroundImage:
                    NetworkImage("https://i.stack.imgur.com/l60Hf.png")),
          ),
          Text(
            "خالد عمر",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  //=============================== Widget Row Posts Cards===========================

  Column MainPostCard(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(0),
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          child: Container(
            //   width: MediaQuery.of(context).size.width * 0.85,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                    // Spacer(),
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
                    //   width: (30 / MediaQuery.of(context).size.width) *
                    //       MediaQuery.of(context).size.width,
                    // ),
                    // Row(
                    //   children: [
                    //     Text("33"),
                    //     SizedBox(
                    //       width: 5,
                    //     ),
                    //     FaIcon(
                    //       FontAwesomeIcons.solidThumbsUp,
                    //       color: Color(0xffC1C0D3),
                    //     ),
                    //   ],
                    // )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
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

  //============================Widget - displayBottomSheet ==================================

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
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "غلق التعليقات",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: FaIcon(
                        FontAwesomeIcons.checkSquare,
                        color: Color(0xffC1C0D3),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "تعديل المنشور",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: FaIcon(
                        FontAwesomeIcons.edit,
                        color: Color(0xffC1C0D3),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "حذف المنشور",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: FaIcon(
                        FontAwesomeIcons.trashAlt,
                        color: Color(0xff6EC9F1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
