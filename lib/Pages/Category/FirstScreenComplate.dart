import 'package:cv_sports/Widgets/Globle/InputDropMenu.dart';
import 'package:cv_sports/Widgets/Globle/InputFieldMake.dart';
import 'package:flutter/material.dart';

import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstScreenComplate extends StatefulWidget {
  @override
  _FirstScreenComplateState createState() => _FirstScreenComplateState();
}

class _FirstScreenComplateState extends State<FirstScreenComplate> {
  bool SeclectBtn = true;
  String dropdownValue = 'KG';
  int currentStep = 0;
  String dropdownValueNational;
  String dropdownValueCity;

  String dropdownValuePerson;

  TextEditingController controllerHight = TextEditingController();
  FocusNode focusHight= new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   "TitalComplateProfile".tr(),
        //   textAlign: TextAlign.center,
        //   maxLines: 2,
        // ),
        CardSelected(),
        InputDropMenu(
          iconSelect: Icons.flag_outlined,
          dropdownValue: dropdownValueNational,
          listMenu: [ "البحرين", "السعودية", "مصر "],
          textHint: "الجنسية",
          setWidth: .85,
        ),
        SeclectDate(context),
        InputDropMenu(
          iconSelect: Icons.location_on,
          dropdownValue: dropdownValueCity,
          listMenu: [ "الاسكندرية", "دبى", "القاهرة"],
          textHint: "المدينة",
          setWidth: .85,
        ),
        SizedBox(height: 10,),
        InputFieldMake(
          title: "Length".tr(),
          isNumber: true,
          inputController: controllerHight,
          touchFocus: focusHight,
          iconInput: Icons.height,
          validatorInput: (input) {
            if (input.trim().length <= 0) {
              return "من فضلك ضع اسم";
            } else if (input.trim().length <= 5) {
              return "الاسم لا يجب ان يقل عن 5 حروف";
            }
            return null;
          },
        ),

        InputWeight(context),
        // SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 40),
        //   BtnGoMainScreen(context),
      ],
    );
  }


//========================= Widget Seclect Date ================================
  Container SeclectDate(BuildContext context) {
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
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.date_range, color: Color(0xff2C2B53)),
                border: InputBorder.none,
                hintText: "date of Birth".tr(),
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                //    labelText: "date of Birth".tr(),
                //        labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Icon(
            Icons.arrow_drop_down_rounded,
            size: 30,
            color:Color(0xff2C2B53),
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }


//========================= Widget Input Weight ================================

  Container InputWeight(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( bottom: 10,top: 10),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [

          InputFieldMake(
            title: "weight".tr(),
            setWidth: .55,
            isNumber: true,
            inputController: controllerHight,
            touchFocus: focusHight,
            iconInput: Icons.anchor,
            validatorInput: (input) {
              if (input.trim().length <= 0) {
                return "من فضلك ضع وزن";
              } else if (input.trim().length <= 5) {
                return "وزن لا يجب ان يقل عن 5 حروف";
              }
              return null;
            },
          ),


          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300)),
            child: DropdownButton(
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down, color: Color(0xff2C2B53)),
              iconSize: 24,
              elevation: 16,
              //      style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                //         color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['KG', 'Pound']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey),
                    ));
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

//========================= Widget Card Selected================================

  Container CardSelected() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                SeclectBtn = true;
              });
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "Male".tr(),
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(22),
                          color: (SeclectBtn == true)
                              ? Colors.white
                              : Colors.black),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    FaIcon(FontAwesomeIcons.male,
                        size: 45,
                        color:
                            (SeclectBtn == true) ? Colors.white : Colors.black),
                  ],
                ),
                decoration: BoxDecoration(
                  color:
                      (SeclectBtn == true) ? Color(0xff2C2B53) : Colors.white,
                  border: Border.all(
                    color: Colors.grey, //                   <--- border color
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(
                          20.0) //                 <--- border radius here
                      ),
                )),
          ),
          InkWell(
            onTap: () {
              setState(() {
                SeclectBtn = false;
              });
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "Female".tr(),
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(22),
                          color: (SeclectBtn == false)
                              ? Colors.white
                              : Colors.black),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    FaIcon(FontAwesomeIcons.male,
                        size: 45,
                        color:
                            (SeclectBtn == false) ? Colors.white : Colors.black)
                  ],
                ),
                decoration: BoxDecoration(
                  color:
                      (SeclectBtn == false) ? Color(0xff2C2B53) : Colors.white,
                  border: Border.all(
                    color: Colors.grey, //                   <--- border color
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(
                          20.0) //                 <--- border radius here
                      ),
                )),
          ),
        ],
      ),
    );
  }


}
