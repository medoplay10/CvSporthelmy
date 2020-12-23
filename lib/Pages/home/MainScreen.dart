import 'package:flutter/material.dart';

import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import 'CategoryScreen.dart';
import 'HomeScreen.dart';
import 'NotificationScreen.dart';
import 'ProfileScreen.dart';
import 'SettingScreen.dart';

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
  SnakeShape snakeShape = SnakeShape.indicator;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = Color(0xffFFCB4D);
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
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
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
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'tickets'),
          BottomNavigationBarItem(icon: Icon(Icons.widgets), label: 'calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'microphone'),
        ],
      ),
      backgroundColor: Color(0xffF4F7FF),
      appBar: (_selectedItemPosition == 1 || _selectedItemPosition == 2)
          ? null
          : appBarMainScreen(Mediawidth, Mediaheight),
      body: ListScreen[_selectedItemPosition],
    );
  }
//=============================== Widget AppBar_MainScreen ===========================

  AppBar appBarMainScreen(double Mediawidth, double Mediaheight) {
    return AppBar(
      backgroundColor: Color(0xffF4F7FF),

      actions: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: IconButton(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NotificationScreen();
                }));
              }),
        )
      ],
      leading: Container(
        padding: EdgeInsets.all(5),
        width: (25 / Mediawidth) * Mediawidth,
        height: (25 / Mediaheight) * Mediaheight,
        child: ClipOval(
          child: Material(
            color: Color(0xffC7C9EA), // button color
            child: InkWell(
              splashColor: Colors.red, // inkwell color
              child: SizedBox(
                  child: Icon(
                    Icons.person,
                    color: Color(0xff68699C),
                    size: 20,
                  )),
              onTap: () {},
            ),
          ),
        ),
      ),
      elevation: 0,
      title: Text(
        "الرئيسة",
        style: TextStyle(fontSize: 18),
      ),
      centerTitle: true,
    );
  }
}
