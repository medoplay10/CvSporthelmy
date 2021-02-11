import 'package:cv_sports/Pages/Category/OneCategory.dart';
import 'package:cv_sports/Pages/News/AllNewsScreen.dart';
import 'package:cv_sports/Widgets/HomeScreenWidget/CardClubNews.dart';
import 'package:cv_sports/Widgets/HomeScreenWidget/CarouselAds.dart';
import 'package:cv_sports/Widgets/HomeScreenWidget/RowListSport.dart';
import 'package:cv_sports/Widgets/HomeScreenWidget/RowVideos.dart';
import 'package:cv_sports/Widgets/SizeBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:cv_sports/Model/Coach.dart';
import 'package:cv_sports/Model/Players.dart';
import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Widgets/newsCards.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';
import 'MainScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Sports> listSport = [
    Sports(
        Tital: "لاعبين",
        IconAssets: FontAwesomeIcons.running,
        iconData: "assets/images/91.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "أندية",
        IconAssets: FontAwesomeIcons.shieldAlt,
        iconData: "assets/images/92.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "مراكز التدريب",
        IconAssets: FontAwesomeIcons.dumbbell,
        iconData: "assets/images/93.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "أكاديميات",
        IconAssets: FontAwesomeIcons.warehouse,
        iconData: "assets/images/94.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "مدربين", //"assets/images/994.png"
        IconAssets: FontAwesomeIcons.userTie,
        iconData: "assets/images/96.png",
        UrlImage: "assets/images/slider.png"),
    Sports(
        Tital: "جمهور", //"assets/images/994.png"
        IconAssets: FontAwesomeIcons.userTie,
        iconData: "assets/images/994.png",
        UrlImage: "assets/images/slider.png"),
  ];

  List<Players> listPlayer = [
    Players(
        UrlImage:
        "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1297x339:1299x337)/origin-imgresizer.eurosport.com/2020/11/03/2927687-60147708-2560-1440.jpg",
        name: "Messi",
        PlayerPlace: "attacker"),
    Players(
        UrlImage:
        "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1297x339:1299x337)/origin-imgresizer.eurosport.com/2020/11/03/2927687-60147708-2560-1440.jpg",
        name: "Messi",
        PlayerPlace: "attacker"),
    Players(
        UrlImage:
        "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1297x339:1299x337)/origin-imgresizer.eurosport.com/2020/11/03/2927687-60147708-2560-1440.jpg",
        name: "Messi",
        PlayerPlace: "attacker"),
    Players(
        UrlImage:
        "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1297x339:1299x337)/origin-imgresizer.eurosport.com/2020/11/03/2927687-60147708-2560-1440.jpg",
        name: "Messi",
        PlayerPlace: "attacker"),
  ];
  List<Coach> ListCoach = [
    Coach(
        name: "دييغو سيميوني",
        UrlImage:
        "https://www.skynewsarabia.com/images/v1/2019/09/14/1282832/800/450/1-1282832.jpg",
        CoachPlace: "atletico madrid"),
    Coach(
        name: "دييغو سيميوني",
        UrlImage:
        "https://www.skynewsarabia.com/images/v1/2019/09/14/1282832/800/450/1-1282832.jpg",
        CoachPlace: "atletico madrid"),
    Coach(
        name: "دييغو سيميوني",
        UrlImage:
        "https://www.skynewsarabia.com/images/v1/2019/09/14/1282832/800/450/1-1282832.jpg",
        CoachPlace: "atletico madrid"),
    Coach(
        name: "دييغو سيميوني",
        UrlImage:
        "https://www.skynewsarabia.com/images/v1/2019/09/14/1282832/800/450/1-1282832.jpg",
        CoachPlace: "atletico madrid"),
  ];

  int _current = 0;


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          RowListSport(listSport: listSport),

          CarouselAds(listSport: listSport),
          Container(
              margin: EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: Text(
                "شاهد",
                style: TextStyle(fontSize: ScreenUtil().setSp(18)),
              )),


          RowVideos(listSport: listSport),

          CardClubNews()

          // cardMorePlayers(
          //     context: context,
          //     Mediawidth: Mediawidth,
          //     Mediaheight: Mediaheight,
          //     listPlayers: listPlayer),

          // cardMoreCoach(
          //     context: context,
          //     Mediawidth: Mediawidth,
          //     Mediaheight: Mediaheight,
          //     listCoach: ListCoach),
        ],
      ),
    );
  }



//   //=============================== Widget Card More Coach===========================
//
//   Card cardMoreCoach({BuildContext context,
//     double Mediawidth,
//     double Mediaheight,
//     List<Coach> listCoach}) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.85,
//         height: MediaQuery.of(context).size.height * 0.32,
//         alignment: Alignment.center,
//         child: Row(
//           children: [
//             Expanded(
//               flex: 5,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xffE3E7F1),
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(20),
//                       bottomRight: Radius.circular(20)),
//                   //      color: Color(0xffF4F7FF),
//                 ),
//                 child: GridView.count(
//                   childAspectRatio: .81,
//                   primary: false,
//                   shrinkWrap: true,
//                   crossAxisSpacing: 2,
//                   mainAxisSpacing: 2,
//                   crossAxisCount: 2,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.only(top: 5),
//                       child: columnMoreCoach(
//                           Mediawidth: Mediawidth,
//                           Mediaheight: Mediaheight,
//                           coachData: ListCoach[0]),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius:
//                           BorderRadius.only(topRight: Radius.circular(20))),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 5),
//                       child: columnMoreCoach(
//                           Mediawidth: Mediawidth,
//                           Mediaheight: Mediaheight,
//                           coachData: ListCoach[1]),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 5),
//                       child: columnMoreCoach(
//                           Mediawidth: Mediawidth,
//                           Mediaheight: Mediaheight,
//                           coachData: ListCoach[2]),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                               bottomRight: Radius.circular(20))),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 5),
//                       child: columnMoreCoach(
//                           Mediawidth: Mediawidth,
//                           Mediaheight: Mediaheight,
//                           coachData: ListCoach[3]),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             containarCoach(context)
//           ],
//         ),
//       ),
//     );
//   }
//
//   //=============================== Widget containar Players ===========================
//
//   Expanded containarCoach(BuildContext context) {
//     return Expanded(
//       flex: 3,
//       child: Container(
//           height: MediaQuery.of(context).size.height * 0.32,
//           padding: EdgeInsets.symmetric(vertical: 20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
//             color: Color(0xffE3E7F1),
//           ),
//           child: Column(
//             children: [
//               Text("المدربين"),
//               Image.asset(
//                 "assets/images/CoachImage.png",
//                 height: MediaQuery.of(context).size.height * 0.12,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.20,
//                 height: MediaQuery.of(context).size.height * 0.04,
//                 alignment: Alignment.center,
//                 //       margin: EdgeInsets.only(bottom: 10),
//                 //     padding: EdgeInsets.only(bottom: 10),
//                 child: RaisedButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .pushReplacement(MaterialPageRoute(builder: (context) {
//                       return MainScreen();
//                     }));
//                   },
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   color: Color(0xff2C2B53),
//                   child: Column(
//                     children: [
//                       Text(
//                         "المزيد",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           )),
//     );
//   }
//
// //=============================== Widget containar Players ===========================
//
//   Expanded containarPlayers(BuildContext context) {
//     return Expanded(
//       flex: 3,
//       child: Container(
//           height: MediaQuery.of(context).size.height * 0.42,
//           padding: EdgeInsets.symmetric(vertical: 20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
//             color: Color(0xffE3E7F1),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("اللاعبين"),
//               Image.asset(
//                 "assets/images/Player.png",
//                 height: MediaQuery.of(context).size.height * 0.12,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.20,
//                 height: MediaQuery.of(context).size.height * 0.05,
//                 alignment: Alignment.center,
//                 margin: EdgeInsets.only(bottom: 10),
//                 child: RaisedButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (context) {
//                       return OneCategory(
//                           isClub: false, itemSport: listSport[0]);
//                     }));
//                   },
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   color: Color(0xff2C2B53),
//                   child: Text(
//                     "المزيد",
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                 ),
//               )
//             ],
//           )),
//     );
//   }
//
// //=============================== Widget Card More Players ===========================
//
//   Card cardMorePlayers({BuildContext context,
//     double Mediawidth,
//     double Mediaheight,
//     List<Players> listPlayers}) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.85,
//         height: MediaQuery.of(context).size.height * 0.42,
//         alignment: Alignment.center,
//         child: Row(
//           children: [
//             Expanded(
//               flex: 5,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xffE3E7F1),
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(20),
//                       bottomRight: Radius.circular(20)),
//                   //      color: Color(0xffF4F7FF),
//                 ),
//                 child: GridView.count(
//                   childAspectRatio: .65,
//                   shrinkWrap: true,
//                   crossAxisSpacing: 2,
//                   mainAxisSpacing: 2,
//                   crossAxisCount: 2,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.only(top: 10),
//                       child: ColumnMorePlayer(
//                           Mediawidth: Mediawidth,
//                           Mediaheight: Mediaheight,
//                           DataPlayer: listPlayers[0]),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius:
//                               BorderRadius.only(topRight: Radius.circular(20))),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 10),
//                       child: ColumnMorePlayer(
//                           Mediawidth: Mediawidth,
//                           Mediaheight: Mediaheight,
//                           DataPlayer: listPlayers[1]),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 10),
//                       child: ColumnMorePlayer(
//                           Mediawidth: Mediawidth,
//                           Mediaheight: Mediaheight,
//                           DataPlayer: listPlayers[2]),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                               bottomRight: Radius.circular(20))),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 10),
//                       child: ColumnMorePlayer(
//                           Mediawidth: Mediawidth,
//                           Mediaheight: Mediaheight,
//                           DataPlayer: listPlayers[3]),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             containarPlayers(context)
//           ],
//         ),
//       ),
//     );
//   }
//
// //=============================== Widget Column More Player ===========================
//
//   Column ColumnMorePlayer({double Mediawidth, double Mediaheight, Players DataPlayer}) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           height: MediaQuery.of(context).size.height * 0.07,
//           width: 0.18 * MediaQuery.of(context).size.width,
//           child: CircleAvatar(
//               radius: 20,
//               backgroundImage: NetworkImage(
//                 DataPlayer.UrlImage,
//               )),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Text(
//           DataPlayer.name,
//           style: TextStyle(fontSize: 14),
//         ),
//         Text(
//           DataPlayer.PlayerPlace,
//           style: TextStyle(fontSize: 12),
//         ),
//       ],
//     );
//   }
//
// //=============================== Widget Column More Player ===========================
//
//   Column columnMoreCoach({double Mediawidth, double Mediaheight, Coach coachData}) {
//     return Column(
//       children: [
//         Container(
//           // padding: EdgeInsets.all(2),
//           width: MediaQuery.of(context).size.width * .19,
//           height: MediaQuery.of(context).size.height * .09,
//           child: ClipOval(
//             child: Material(
//               color: Color(0xffC7C9EA), // button color
//               child: InkWell(
//                 splashColor: Colors.red, // inkwell color
//                 child: Image.network(
//                   coachData.UrlImage,
//                   fit: BoxFit.fill,
//                 ),
//                 onTap: () {},
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Text(
//           coachData.name,
//           style: TextStyle(fontSize: 11),
//         ),
//         Text(coachData.CoachPlace, style: TextStyle(fontSize: 11)),
//       ],
//     );
//   }
//






}
