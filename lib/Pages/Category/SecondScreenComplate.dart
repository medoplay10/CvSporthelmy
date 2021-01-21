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

  List<String> ListGamePractitioner = ["سمسار", "مدرب", "لاعب"];
  List<String> ListGameSelect = ["كرة قدم", "كرة طائرة", "مصارعة"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFieldLocal(
              context: context, TextField: "النادى", iconSelect: Icons.person),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300)),
            child: Row(
              children: [
                Icon(
                  Icons.sports_volleyball,
                  //   Icons.flag_outlined,
                  color: Color(0xff2C2B53),
                  size: 28,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValueGameSelect,
                      hint: Text(
                        "اللعبة",
                        // 'الجنسية',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(14),
                            color: Colors.grey),
                      ),
                      icon: Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 40,
                        color: Color(0xff2C2B53),
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepPurple),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValueGameSelect = newValue;
                          print(newValue);
                          print("dropValueId" + dropdownValueGameSelect);
                        });
                      },
                      items: ListGameSelect.map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(18),
                                  color: Colors.grey.shade700)),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300)),
            child: Row(
              children: [
                Icon(
                  Icons.sports,
                  //   Icons.flag_outlined,
                  color: Color(0xff2C2B53),
                  size: 28,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValueGamePractitioner,
                      hint: Text(
                        "ممارس اللعبة",
                        // 'الجنسية',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            color: Colors.grey),
                      ),
                      icon: Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 40,
                        color: Color(0xff68699C),
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepPurple),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValueGamePractitioner = newValue;
                          print(newValue);
                          print("dropValueId" + dropdownValueGamePractitioner);
                        });
                      },
                      items: ListGamePractitioner.map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(18),
                                  color: Colors.grey.shade700)),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SeclectDate(context: context, title: "بداية العقد"),
          SeclectDate(context: context, title: "نهاية العقد"),
          Container(
            height: 115,
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
                hintStyle: TextStyle(fontSize: 14),
                hintText: "اكتب  هنا",
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

  //========================= Widget Select Date ================================

  Container MakeCustomDropMenu(
      {BuildContext context,
      var iconSelect,
      String title,
      List<String> dropMenu,
      String dropValueId}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        children: [
          Icon(
            iconSelect,
            //   Icons.flag_outlined,
            color: Color(0xff2C2B53),
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: dropValueId,
                hint: Text(
                  title,
                  // 'الجنسية',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(16), color: Colors.grey),
                ),
                icon: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 40,
                  color: Colors.orange,
                ),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                onChanged: (String newValue) {
                  setState(() {
                    dropValueId = newValue;
                    print(newValue);
                    print("dropValueId" + dropValueId);
                  });
                },
                items: dropMenu.map((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            color: Colors.grey.shade700)),
                  );
                }).toList(),
              ),
            ),
          ),
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
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(20),
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
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.date_range, color: Color(0xff2C2B53)),
                border: InputBorder.none,
                hintText: title,

                hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                //    labelText: "date of Birth".tr(),
                //        labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ),
          ),
          Icon(
            Icons.arrow_drop_down_rounded,
            size: 40,
            color: Color(0xff2C2B53),
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }

//============================Widget - TextFieldLocal ==================================
  Container TextFieldLocal(
      {BuildContext context, String TextField, var iconSelect}) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(iconSelect, color: Color(0xff2C2B53)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: TextField,
          labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
