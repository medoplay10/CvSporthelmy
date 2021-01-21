import 'package:cv_sports/ProviderAll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'CategoryScreen.dart';
import 'HomeScreen.dart';
import 'NotificationScreen.dart';
import 'PostsScreen.dart';
import 'ProfileScreen.dart';
import 'SettingScreen.dart';
import 'VoteScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ShapeBorder bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(5);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = Colors.blueGrey;
  Gradient selectedGradient =
  const LinearGradient(colors: [Colors.red, Colors.amber]);

  Color unselectedColor = Colors.white;
  Gradient unselectedGradient =
  const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  Color containerColor;
  List<Color> containerColors = [
    const Color(0xFFFDE1D7),
    const Color(0xFFE4EDF5),
    const Color(0xFFE7EEED),
    const Color(0xFFF4E4CE),
  ];

  var ListScreen = [
    HomeScreen(),
    ProfileScreen(),
    CategoryScreen(),
    VoteScreen(),
    PostsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Color(0xffF4F7FF)));
    return Scaffold(
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
        backgroundColor: Color(0xff2C2B53),
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        currentIndex: _selectedItemPosition,
        onTap: (index) {
          Provider.of<ProviderConstants>(context, listen: false)
              .ChangeIndexTap(Value: 0);
          setState(() {
            _selectedItemPosition = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.users,
              ),
              label: 'calendar'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.voteYea,
              )),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.comment,
              )),
        ],
      ),
      backgroundColor: Color(0xffF9FAFF),
      appBar: (_selectedItemPosition == 1 ||
          _selectedItemPosition == 3 ||
          _selectedItemPosition == 4)
          ? null
          : appBarMainScreen(Mediawidth, Mediaheight),
      body: ListScreen[_selectedItemPosition],
    );
  }
//=============================== Widget AppBar_MainScreen ===========================

  AppBar appBarMainScreen(double Mediawidth, double Mediaheight) {
    return AppBar(
      backgroundColor: Color(0xffF9FAFF),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.all(5),
      //     child: IconButton(
      //         icon: Icon(
      //           Icons.notifications_none,
      //           size: 30,
      //         ),
      //         onPressed: () {
      //           Navigator.of(context)
      //               .push(MaterialPageRoute(builder: (context) {
      //             return NotificationScreen();
      //           }));
      //         }),
      //   )
      // ],
      // leading: Container(
      //   margin: EdgeInsets.all(8),
      //   //   height: .04 * MediaQuery.of(context).size.height,
      //   //   width: .13 * MediaQuery.of(context).size.width,
      //   child: ClipRRect(
      //       borderRadius: BorderRadius.circular(50.0),
      //       child: Image.asset(
      //         "assets/images/imageprofile.png",
      //         fit: BoxFit.fill,
      //       )),
      // ),
      elevation: 0,

      automaticallyImplyLeading: false,
      title: Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 3),
            height: .042 * MediaQuery.of(context).size.height,
            width: .09 * MediaQuery.of(context).size.width,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  "assets/images/imageprofile.png",
                  //"assets/images/imageprofile.png"
                  fit: BoxFit.fill,
                )),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffEEF1FC),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffEEF1FC),
                    ),
                    //    color: Color(0xffE7EBF8),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0, right: 10),
                        filled: true,
                        fillColor: Color(0xffEEF1FC),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 0.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.white, width: 0.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        //         border: InputBorder.none,
                        hintText: "البحث",

                        hintStyle: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NotificationScreen();
              }));
            },
            child: Container(
              margin: EdgeInsets.only(right: 5),
              child: FaIcon(
                FontAwesomeIcons.bell,
              ),
            ),
          ),
//           IconButton(
//               icon: Icon(
//
//                 Icons.notifications_none,
//
//                 size: 30,
//               ),
// alignment: Alignment.centerLeft,
//
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) {
//                   return NotificationScreen();
//                 }));
//               })
        ],
      ),
      centerTitle: true,
    );
  }
}
