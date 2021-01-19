import 'package:cv_sports/Pages/PagesProfileScreen/OnePostScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPostsProfileScreen extends StatelessWidget {
  String testContext =
      "أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة.أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة….أدى بطل الدوري مساء اليوم الأربعاء مرانه الرئيس؛ استعدادًا لمواجهة مضيفه الوحدة”….";

  List Images = [
    "https://arabic.sport360.com/wp-content/uploads/2020/10/%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83.jpg",
    "https://arabic.sport360.com/wp-content/uploads/2020/10/%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83.jpg",
    "https://arabic.sport360.com/wp-content/uploads/2020/10/%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83.jpg",
    "https://arabic.sport360.com/wp-content/uploads/2020/10/%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83.jpg",
    "https://arabic.sport360.com/wp-content/uploads/2020/10/%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83.jpg",
  ];
  List Videos = [
    "https://aspergillosis.org/wp-content/uploads/2019/01/video-icon.jpg",
    "https://aspergillosis.org/wp-content/uploads/2019/01/video-icon.jpg",
    "https://aspergillosis.org/wp-content/uploads/2019/01/video-icon.jpg",
    "https://aspergillosis.org/wp-content/uploads/2019/01/video-icon.jpg",
    "https://aspergillosis.org/wp-content/uploads/2019/01/video-icon.jpg",
    "https://aspergillosis.org/wp-content/uploads/2019/01/video-icon.jpg",
    "https://aspergillosis.org/wp-content/uploads/2019/01/video-icon.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return OnePostScreen();
                }));
              },
              child: RowPostsCards(context)),
          SizedBox(
            height: (10 / MediaQuery.of(context).size.height) *
                MediaQuery.of(context).size.height,
          ),
          RowImagesCards(context),
          SizedBox(
            height: (10 / MediaQuery.of(context).size.height) *
                MediaQuery.of(context).size.height,
          ),
          RowVideosCards(context),
          SizedBox(
            height: (10 / MediaQuery.of(context).size.height) *
                MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }

  //=============================== Widget Row Posts Cards===========================

  Column RowPostsCards(BuildContext context) {
    return Column(
      children: [
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

  //=============================== Widget Row Images Cards===========================

  Column RowImagesCards(BuildContext context) {
    return Column(
      children: [
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
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: Text(
                        "صوري من مبارة امس مع فريق الوحدة",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 12),
                        maxLines: 12,
                      ),
                    ),
                    Container(
                      height: 130,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Images.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    Images[index],
                                    fit: BoxFit.fill,
                                    // height: 72,
                                    width: (160 /
                                            MediaQuery.of(context).size.width) *
                                        MediaQuery.of(context).size.width,
                                  )),
                            );
                          }),
                    )
                  ],
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

  //=============================== Widget Row Videos Cards===========================

  Column RowVideosCards(BuildContext context) {
    return Column(
      children: [
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
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: Text(
                        "هدف اللقاء",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 12),
                        maxLines: 12,
                      ),
                    ),
                    Container(
                      height: 130,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Videos.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    Videos[index],
                                    fit: BoxFit.fill,
                                    // height: 72,
                                    width: (160 /
                                            MediaQuery.of(context).size.width) *
                                        MediaQuery.of(context).size.width,
                                  )),
                            );
                          }),
                    )
                  ],
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
}
