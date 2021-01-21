import 'package:cv_sports/Pages/PagesProfileScreen/OneChatScreen.dart';
import 'package:cv_sports/Widgets/newsCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class MyConversationProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RowChatsCards(context);
  }

  //=============================== Widget Card More Coach===========================

  Column RowChatsCards(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return OneChatScreen();
            }));
          },
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.center,
              child: Row(
                children: [
                  //  SizedBox(width: 20,),
                  Flexible(
                    flex: 2,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          "https://www.zamalektoday.com/files/pic_news/cb92bdc4e5.jpg",
                          fit: BoxFit.fill,
                          height: (72 / MediaQuery.of(context).size.height) *
                              MediaQuery.of(context).size.height,
                          width: (200 / MediaQuery.of(context).size.width) *
                              MediaQuery.of(context).size.width,
                        )),
                  ),
                  SizedBox(
                    width: (10 / MediaQuery.of(context).size.width) *
                        MediaQuery.of(context).size.width,
                  ),
                  Flexible(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "الاهلي المصري",
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(13)),
                            ),
                            Spacer(),
                            Text(
                              "04:22AM",
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(13)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: (10 / MediaQuery.of(context).size.width) *
                              MediaQuery.of(context).size.width,
                        ),
                        Row(
                          children: [
                            Icon(Icons.home),
                            Text(
                              "نادي",
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(10),
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: (5 / MediaQuery.of(context).size.height) *
                              MediaQuery.of(context).size.height,
                        ),
                        Text(
                          "نود التحدث مع وكيل اعمالك للتعاقد معك",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: ScreenUtil().setSp(12)),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
