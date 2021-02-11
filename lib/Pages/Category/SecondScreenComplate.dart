import 'package:cv_sports/Widgets/Globle/InputDropMenu.dart';
import 'package:cv_sports/Widgets/Globle/InputFieldMake.dart';
import 'package:cv_sports/Widgets/Globle/seclectData.dart';
import 'package:flutter/material.dart';
import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondScreenComplate extends StatefulWidget {
  @override
  _SecondScreenComplateState createState() => _SecondScreenComplateState();
}

class _SecondScreenComplateState extends State<SecondScreenComplate> {
  bool SeclectBtn = true;
  String dropdownValue = 'KG';
  int currentStep = 0;

  String dropdownValueGamePractitioner;
  String dropdownValueGameSelect;

  TextEditingController textEditingController = TextEditingController();

  int maxLengthEnd = 255;

  int maxLengthStart = 255;
  TextEditingController controllerDateTime1= TextEditingController();
  TextEditingController controllerDateTime2= TextEditingController();

  TextEditingController controllerPhone1 = TextEditingController();
  FocusNode focusPhone1 = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InputFieldMake(
            title: "النادى / الاكادمية",
            isNumber: true,
            inputController: controllerPhone1,
            touchFocus: focusPhone1,
            iconInput: Icons.person,
            validatorInput: (input) {
              if (input.trim().length <= 0) {
                return "من فضلك ضع اسم";
              } else if (input.trim().length <= 5) {
                return "الاسم لا يجب ان يقل عن 5 حروف";
              }
              return null;
            },
          ),

          InputDropMenu(
            iconSelect: Icons.sports_volleyball,
            dropdownValue: dropdownValueGameSelect,
            listMenu: [ "سباحة", "كرة سلة", "قدم "],
            textHint: "اللعبة",
            setWidth: .85,
          ),

          InputDropMenu(
            iconSelect: Icons.sports,
            dropdownValue: dropdownValueGamePractitioner,
            listMenu: ["يمين", "يسار", "كلا الجهتين"],
            textHint: "ممارسة اللعبة",
            setWidth: .85,
          ),
          seclectDateTime(inputController: controllerDateTime1,textHint: "بداية العقد"),
          seclectDateTime(inputController: controllerDateTime2,textHint: "نهاية العقد"),

          Container(
            height: MediaQuery.of(context).size.height * .16,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: TextField(
              textAlign: TextAlign.start,
              maxLines: null,
              maxLength: maxLengthStart,
              style: TextStyle(
                fontSize: 14,
                height: 1.2,
                color: Colors.black,
              ),
              controller: textEditingController,
              onChanged: (value) {
                setState(() {
                  maxLengthEnd = maxLengthStart - value.length;
                });
              },
              decoration: InputDecoration(
                counterText: "",
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: ScreenUtil().setSp(14)),
                hintText: "السيرة الذاتية",
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Text(
              maxLengthEnd.toString(),
              style: TextStyle(
                fontSize: ScreenUtil().setSp(14),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }


//========================= Widget Seclect Date ================================
  Container SeclectDate({BuildContext context, String title}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: DateTimeField(
              onChanged: (date) {
                print("date is = " + date.toString());
              },
              validator: (date) => date == null ? 'التاريخ لو سمحت' : null,
              onShowPicker: (context, currentValue) {
                return showDatePicker(
                    context: context,
                    firstDate: DateTime(1940),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
              },
              format: DateFormat("yyyy-MM-dd"),
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(18), color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.date_range, color: Color(0xff2C2B53)),
                border: InputBorder.none,
                hintText: title,

                hintStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(16), color: Colors.grey),
                //    labelText: "date of Birth".tr(),
                //        labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ),
          ),
          Icon(
            Icons.arrow_drop_down_rounded,
            size: 30,
            color: Color(0xff2C2B53),
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }


}
