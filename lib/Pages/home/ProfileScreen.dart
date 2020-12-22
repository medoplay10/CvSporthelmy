import 'package:cv_sports/Constants/Contans.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/MyConversationProfileScreen.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/MyDataProfileScreen.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/MyPostsProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Color BackgroundColor;
  int Index1 = 0;
  int Index2 = 1;
  int Index3 = 2;
  int IndexNow = 0;

  Color TextColor;
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    // IndexTap=   Allvarible.IndexViewPage ;
    print("here");

    return DefaultTabController(
      initialIndex: IndexNow,
      length: 3,
      child: Scaffold(
          backgroundColor: Color(0xffF9FAFF),
          appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(180.0),
              child: Column(
                children: [
                  ImageAndTextProfile(),
                  TabsBarCard(context),
                ],
              ),
            ),
            elevation: 0,
            backgroundColor: Color(0xffF9FAFF),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: IconButton(
                    iconSize: 26,
                    icon: Icon(Icons.add_circle),
                    color: Color(0xff5E5D8F),
                    onPressed: () {}),
              )
            ],
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              MyDataProfileScreen(),
              MyPostsProfileScreen(),
              MyConversationProfileScreen(),
            ], //01019334359
          )),
    );
  }

  Center ImageAndTextProfile() {
    return Center(
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            child: CircleAvatar(
                radius: 20,
                backgroundImage:
                    NetworkImage("https://i.stack.imgur.com/l60Hf.png")),
          ),
          Text(
            "خالد عمر",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "مهاجم",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }

  Card TabsBarCard(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white)),
        child: TabBar(
          labelPadding: EdgeInsets.all(0),
          labelColor: Colors.red,
          indicatorWeight: 0.1,
          unselectedLabelColor: Colors.black,
          // unselectedLabelStyle:TextStyle(
          //     fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
          isScrollable: true,

          onTap: (int i) {
            Provider.of<ProviderConstants>(context, listen: false)
                .ChangeIndexTap(Value: i);

            print("Index = " + i.toString());
          },

          tabs: [
            ItemTapBar(context: context, Tital: "بياناتي ", indexItem: 0),
            ItemTapBar(context: context, Tital: "منشوراتي ", indexItem: 1),
            ItemTapBar(context: context, Tital: "محادثات ", indexItem: 2),
          ],
        ),
      ),
    );
  }

  Container ItemTapBar({BuildContext context, String Tital, int indexItem}) {
    BackgroundColor =
        indexItem == Provider.of<ProviderConstants>(context).IndexTap
            ? Color(0xff5E5D8F)
            : Colors.white;
    TextColor = indexItem == Provider.of<ProviderConstants>(context).IndexTap
        ? Colors.white
        : Colors.black;
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      margin: const EdgeInsets.only(right: 2, left: 2),
      decoration: BoxDecoration(
          color: BackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      width: MediaQuery.of(context).size.width * 0.28,
      alignment: Alignment.center,
      child: Text(
        Tital,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: TextColor, fontSize: 14),
      ),
    );
  }
}
