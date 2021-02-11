import 'package:cv_sports/Pages/PagesProfileScreen/AddMedal.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/AddPost_Image_video.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/addSummaryProfile.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/AddPrizes.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/AddSocialMedia.dart';
import 'package:cv_sports/Pages/PagesProfileScreen/editImageProfile.dart';
import 'package:cv_sports/Pages/TapsProfileScreen/MyConversationProfileScreen.dart';
import 'package:cv_sports/Pages/TapsProfileScreen/MyDataProfileScreen.dart';
import 'package:cv_sports/Pages/TapsProfileScreen/MyPostsProfileScreen.dart';
import 'package:cv_sports/Widgets/ProfileScreenWidget/ImageAndTextProfile.dart';
import 'package:cv_sports/Widgets/ProfileScreenWidget/TabsBarProfile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';
import 'SettingScreen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  Color BackgroundColor;

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
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight( MediaQuery.of(context).size.height * .23),
            child: Column(
              children: [
                ImageAndTextProfile(),

                TabsBarProfile(tabController: tabController,)
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: Color(0xffF9FAFF),
          actions: [
            InkWell(
              onTap: () => displayBottomSheet(context),
              child: Padding(
                padding: const EdgeInsets.all(15.0), //   size: 26,
                //      color: Color(0xff5E5D8F),
                child: FaIcon(
                  FontAwesomeIcons.ellipsisV,
                  color: Color(0xff2C2B53),
                  size: 26,
                ),
              ),
            )
          ],
          leading: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SettingScreen();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0), //   size: 26,
              //      color: Color(0xff5E5D8F),
              child: FaIcon(
                FontAwesomeIcons.cog,
                color: Color(0xff2C2B53),
                size: 26,
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            MyDataProfileScreen(),
            MyPostsProfileScreen(),
            MyConversationProfileScreen(),
          ], //01019334359
        ));
  }


  //============================Widget - displayBottomSheet ==================================

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
      //  isDismissible: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
        ),
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.6,
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
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
                  Divider(thickness: 2,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return AddPrize();
                          }));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "اضافة او تعديل الجوائز",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: Image.asset(
                        "assets/images/trophy.png", height: 26.42,
                        width: 27.55,),
                    ),
                  ),
                  Divider(thickness: 2,),
                  InkWell( //AddMedal
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return AddMedal();
                          }));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "اضافة او تعديل الميداليات",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: Image.asset(
                        "assets/images/medal.png", height: 26.42,
                        width: 27.55,),
                    ),
                  ),
                  Divider(thickness: 2,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
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
                        return editImageProfile();
                      }));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text(
                        "اضافة او تعديل الصور",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                      leading: Image.asset(
                        "assets/images/image.png",
                        height: 26.42,
                        width: 27.55,
                      ),
                    ),
                  ),
                  Divider(thickness: 2,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return AddPost_Image_video();
                      }));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_back_outlined),
                      title: Text("اضافة منشور", style: TextStyle(
                          fontSize: 14, color: Colors.grey.shade700),),
                      leading: Image.asset(
                        "assets/images/chat.png", height: 26.42, width: 27.55,),
                    ),
                  ),

                ],
              ),
            ),
          );
        });
  }
}
