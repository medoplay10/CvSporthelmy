import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:cv_sports/Widgets/Globle/BottomApp.dart';
import 'package:cv_sports/Widgets/Globle/InputDropMenu.dart';

import 'package:cv_sports/Widgets/SentDataButtom.dart';
import 'package:cv_sports/Widgets/Globle/seclectData.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:easy_localization/easy_localization.dart' as easy;

class AddnewUserScreen extends StatefulWidget {
  @override
  _AddnewUserScreenState createState() => _AddnewUserScreenState();
}

class _AddnewUserScreenState extends State<AddnewUserScreen> {
  String CountryCode = "+20";

  PhoneNumber number = PhoneNumber(isoCode: 'EG');

  final TextEditingController controller = TextEditingController();

  String dropdownValueNational;

  String dropdownValueGameSelect;
  List<String> ListGameSelect = ["كرة قدم", "كرة طائرة", "مصارعة"];

  String dropdownValueGameKindSelect;
  List<String> ListGameKindSelect = ["مترجمين", "مصورين", "سمسار"];

  String dropdownValueNationalSelect;
  List<String> ListNationalSelect = ["القاهرة", "مكة المكرمة", "الرياض"];
  TextEditingController controllerDateTime1= TextEditingController();
  TextEditingController controllerDateTime2= TextEditingController();
  String dropdownValueCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF9FAFF),
        centerTitle: true,
        title: Text(
          "اكمل الملف الشخصي",
          style: TextStyle(fontSize: ScreenUtil().setSp(16)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //    InputImage(),
            //  SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 15),

            InputDropMenu(
              iconSelect: Icons.sports_volleyball,
              dropdownValue: dropdownValueGameSelect,
              listMenu: [ "سباحة", "كرة سلة", "قدم "],
              textHint: "اللعبة",
              setWidth: .85,
            ),

            InputDropMenu(
              iconSelect: Icons.location_on,
              dropdownValue: dropdownValueCity,
              listMenu: [ "الاسكندرية", "دبى", "القاهرة"],
              textHint: "مكان العمل",
              setWidth: .85,
            ),

            InputDropMenu(
              iconSelect: Icons.flag_outlined,
              dropdownValue: dropdownValueNational,
              listMenu: [ "البحرين", "السعودية", "مصر "],
              textHint: "الجنسية",
              setWidth: .85,
            ),
            seclectDateTime(inputController: controllerDateTime1,textHint: "بداية العقد"),
            seclectDateTime(inputController: controllerDateTime2,textHint: "نهاية العقد"),
            SizedBox(
              height: 10,
            ),
            // InputPhone(context),
            RowAddTwitter(context),
            RowAddInstagram(context),
            RowAddFacebook(context),
            RowAddSnapchatGhost(context),
            //   Spacer(),
            BottomApp(
              title:   "التالى",
              setCircular: 10,
              functionButton:(){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) {
                      return MainScreen();
                    }));
              },
              setWidth: .8,
              oneColor: Color(0xff2C2B53),
              twoColor: Color(0xff2C2B53),
              colorTitle: Colors.white,
            ),

          ],
        ),
      ),
    );
  }


//============================= Row AddT witter =======================

  Container RowAddTwitter(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Color(0xff21A9F4),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("تويتر",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(14),
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: ScreenUtil().setSp(12)),
                  hintText: "اضف الرابط",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

//============================= Row Add Instagram =======================

  Container RowAddInstagram(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Color(0xffFFDD55),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("انستجرام",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  hintText: "اضف الرابط",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

//============================= Row Add Facebook =======================

  Container RowAddFacebook(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Color(0xff1977F2),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("فيس بوك",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  hintText: "اضف الرابط",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

//============================= Row Add Snapchat Ghost =======================

  Container RowAddSnapchatGhost(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.snapchatGhost,
                  color: Color(0xffFFEB3B),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("سناب شات",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  hintText: "اضف الرابط",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }




}
