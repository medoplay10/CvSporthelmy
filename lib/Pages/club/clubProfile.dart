import 'package:cv_sports/Pages/PagesProfileScreen/AddMedal.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/AddPost_Image_video.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/addSummaryProfile.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/AddPrizes.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/AddSocialMedia.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/editImageProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:provider/provider.dart';
import '../club/tab_Pages/clubconversation.dart';
import '../club/tab_Pages/clubData.dart';
import '../club/tab_Pages/clubPosts.dart';
import '../../ProviderAll.dart';

class ClubProfile extends StatefulWidget {
  @override
  _ClubProfileState createState() => _ClubProfileState();
}

class _ClubProfileState extends State<ClubProfile>
    with TickerProviderStateMixin {
  Color BackgroundColor;
  int Index1 = 0;
  int Index2 = 1;
  int Index3 = 2;
  int IndexNow = 0;

  Color TextColor;
  TabController tabController;

  void _setActiveTabIndex() {
    Provider.of<ProviderConstants>(context, listen: false)
        .ChangeIndexTap(Value: tabController.index);
  }

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this, initialIndex: 0);
    tabController.addListener(_setActiveTabIndex);
  }

  @override
  Widget build(BuildContext context) {
    // IndexTap=   Allvarible.IndexViewPage ;
    print("here");

    return Scaffold(
        backgroundColor: Color(0xffF9FAFF),
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(185.0),
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
            InkWell(
              onTap: () => displayBottomSheet(context),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.add_circle,
                  size: 26,
                  color: Color(0xff5E5D8F),
                ),
              ),
            )
          ],
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            ClubData(),
            ClubPosts(),
            MyConversationProfileScreen()
          ], //01019334359
        ));
  }

  //======================= Widget Image And Text Profile ==============================
  Center ImageAndTextProfile() {
    return Center(
      child: Column(
        children: [
          Container(
            height: (70 / MediaQuery.of(context).size.height) *
                MediaQuery.of(context).size.height,
            width: (70 / MediaQuery.of(context).size.width) *
                MediaQuery.of(context).size.width,
            child: CircleAvatar(
                radius: 20,
                backgroundImage:
                    NetworkImage("https://i.stack.imgur.com/l60Hf.png")),
          ),
          Text(
            "خالد عمر",
            style: TextStyle(
                fontSize: ScreenUtil().setSp(16), fontWeight: FontWeight.bold),
          ),
          Text(
            "مهاجم",
            style: TextStyle(fontSize: ScreenUtil().setSp(12)),
          )
        ],
      ),
    );
  }

  //======================= Widget Tabs Bar Card ==============================

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
          controller: tabController,
          labelPadding: EdgeInsets.all(0),
          labelColor: Colors.red,
          indicatorWeight: 0.1,
          unselectedLabelColor: Colors.black,
          isScrollable: true,
          onTap: (int i) {
            Provider.of<ProviderConstants>(context, listen: false)
                .ChangeIndexTap(Value: i);

            print("Index = " + i.toString());
          },
          tabs: [
            Tab(
                child: ItemTapBar(
                    context: context, Tital: "بياناتي ", indexItem: 0)),
            Tab(
                child: ItemTapBar(
                    context: context, Tital: "منشوراتي ", indexItem: 1)),
            Tab(
                child: ItemTapBar(
                    context: context, Tital: "محادثات ", indexItem: 2)),
          ],
        ),
      ),
    );
  }

  //======================= Widget Item Tap Bar ==============================

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
            height: MediaQuery.of(context).size.height * 0.35,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return addSummaryProfile();
                      }));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "اضافة او تعديل السيرة الذاتية",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: Image.asset(
                        "assets/images/profile.png",
                        height: 26.42,
                        width: 27.55,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return AddSocialMedia();
                      }));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "اضافة او تعديل وسائل التواصل",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: Image.asset(
                        "assets/images/slack.png",
                        height: 26.42,
                        width: 27.55,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ), //editImageProfile

                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return AddPost_Image_video();
                      }));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "اضافة منشور",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: Image.asset(
                        "assets/images/chat.png",
                        height: 26.42,
                        width: 27.55,
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
