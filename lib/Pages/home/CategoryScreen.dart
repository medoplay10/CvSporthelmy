import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Pages/Category/OneCategory.dart';
import 'package:cv_sports/Widgets/SizeBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';
import 'NotificationScreen.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Sports> listSport = [
    Sports(
        Tital: "اللاعبين",
        IconAssets: FontAwesomeIcons.running,
        iconData: "assets/images/1.png",
        UrlImage: "assets/images/11.png"),
    Sports(
        Tital: "اندية",
        IconAssets: FontAwesomeIcons.shieldAlt,
        iconData: "assets/images/2.png",
        UrlImage: "assets/images/22.png"),
    Sports(
        Tital: "مراكز التدريب",
        IconAssets: FontAwesomeIcons.dumbbell,
        iconData: "assets/images/3.png",
        UrlImage: "assets/images/33.png"),
    Sports(
        Tital: "اكادميات",
        IconAssets: FontAwesomeIcons.warehouse,
        iconData: "assets/images/4.png",
        UrlImage: "assets/images/44.png"),
    Sports(
        Tital: "المدربين",
        IconAssets: FontAwesomeIcons.userTie,
        iconData: "assets/images/5.png",
        UrlImage: "assets/images/55.png"),
    Sports(
        Tital: "حكام",
        IconAssets: FontAwesomeIcons.headset,
        iconData: "assets/images/2.png",
        UrlImage: "assets/images/22.png"),
    Sports(
        Tital: "وسطاء",
        IconAssets: FontAwesomeIcons.handshake,
        iconData: "assets/images/3.png",
        UrlImage: "assets/images/33.png"),
    Sports(
        Tital: "اعلامين",
        IconAssets: FontAwesomeIcons.photoVideo,
        iconData: "assets/images/4.png",
        UrlImage: "assets/images/44.png"),
    Sports(
        Tital: "مصورين",
        IconAssets: FontAwesomeIcons.camera,
        iconData: "assets/images/4.png",
        UrlImage: "assets/images/44.png"),
    Sports(
        Tital: "مترجمين",
        IconAssets: FontAwesomeIcons.language,
        iconData: "assets/images/4.png",
        UrlImage: "assets/images/44.png"),
    Sports(
        Tital: "أطباء",
        IconAssets: FontAwesomeIcons.stethoscope,
        iconData: "assets/images/4.png",
        UrlImage: "assets/images/44.png"),
    Sports(
        Tital: "إداريين",
        IconAssets: FontAwesomeIcons.userTag,
        iconData: "assets/images/4.png",
        UrlImage: "assets/images/44.png"),
  ];

  List<Sports> listCategory = [
    Sports(
        Tital: "كرة قدم",
        iconData: "assets/images/1.png",
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "تنس",
        iconData: "assets/images/2.png",
        UrlImage:
            "https://1440sportz.com/wp-content/uploads/2020/07/Nike-Football-3.jpg"),
    Sports(
        Tital: "كرة سلة",
        iconData: "assets/images/3.png",
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
    Sports(
        Tital: "بيسبول",
        iconData: "assets/images/4.png",
        UrlImage:
            "https://1440sportz.com/wp-content/uploads/2020/07/Nike-Football-3.jpg"),
    Sports(
        Tital: "كرة يد",
        iconData: "assets/images/5.png",
        UrlImage:
            "https://sportstalk1260.com/wp-content/uploads/2020/03/football-history.jpg"),
  ];

  @override
  void initState() {
    Provider.of<ProviderConstants>(context, listen: false)
        .ChangeIndexTap(Value: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color(0xffF9FAFF),
        child: Column(
          children: [
            SizeBoxHeight(
              SizeWant: 10,
              Mediaheight: Mediaheight,
            ),
            Center(
                // child: Container(
                //   height: MediaQuery.of(context).size.height * 0.07,
                //   width: MediaQuery.of(context).size.width * 0.82,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     border: Border.all(
                //       color: Colors.grey.shade300,
                //     ),
                //     borderRadius: BorderRadius.circular(25),
                //   ),
                //   child: rowSearch(),
                // ),
                ),
            SizeBoxHeight(
              SizeWant: 10,
              Mediaheight: Mediaheight,
            ),
            rowListIcon(Mediawidth, Mediaheight, context),
            SizeBoxHeight(
              SizeWant: 5,
              Mediaheight: Mediaheight,
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: GridView.builder(
                  shrinkWrap: true,

                  itemCount: listSport.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0),

                  // shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if (index == 1) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return OneCategory(
                              isClub: true,
                              itemSport: listSport[index],
                            );
                          }));
                        } else {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return OneCategory(
                                isClub: false, itemSport: listSport[index]);
                          }));
                        }
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                            padding: EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 0, color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            child: columnMoreData(
                                context: context,
                                Mediaheight: Mediaheight,
                                Mediawidth: Mediawidth,
                                SportData: listSport[index])),
                      ),
                    );
                  },
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
          ],
        ),
      ),
    );
  }

  Container rowSearch() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffE7EBF8),
      ),
      child: Row(
        //   mainAxisAlignment:MainAxisAlignment.center ,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            color: Color(0xffE7EBF8),
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.search,
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              style: TextStyle(fontSize: 16, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffE7EBF8),
                border: InputBorder.none,
                hintText: "البحث",
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ),
          ),
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.slidersH,
              ),
              onPressed: () {})
        ],
      ),
    );
  }

  SizedBox rowListIcon(double Mediawidth, double Mediaheight,
      BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: (100 / MediaQuery
          .of(context)
          .size
          .height) * MediaQuery
          .of(context)
          .size
          .height,
      child: ListView.builder(
          itemCount: listCategory.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 8, right: 2),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: (70 / Mediawidth) * Mediawidth,
                    height: (70 / Mediaheight) * Mediaheight,
                    child: ClipOval(
                      child: Material(
                        color: Color(0xffFFFFFF), // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: Image.asset(
                            listSport[index].iconData,
                            //fit: BoxFit.fill,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                  Text(
                    listCategory[index].Tital,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            );
          }),
    );
  }

  SingleChildScrollView columnMoreData(
      {double Mediawidth,
      double Mediaheight,
      Sports SportData,
      BuildContext context}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.all(2),
            width: MediaQuery.of(context).size.width * .17,
            height: MediaQuery.of(context).size.height * .07,
            child: Material(
              //  color: Color(0xffC7C9EA), // button color
              child: InkWell(
                splashColor: Colors.red, // inkwell color
                child: Center(
                  child: FaIcon(
                    SportData.IconAssets,
                    color: Color(0xffC3CBE0),
                    size: 50,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            SportData.Tital,
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "2",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
