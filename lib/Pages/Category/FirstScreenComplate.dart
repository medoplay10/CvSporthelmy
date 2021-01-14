import 'package:flutter/material.dart';

import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
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
        SeclectNational(context),
        SeclectDate(context),
        TextFieldLocal(
            context: context,
            TextField: "المدينة",
            iconSelect: Icons.location_on_rounded),
        TextFieldLocal(
            context: context,
            TextField: "Length".tr(),
            iconSelect: Icons.height),
        InputWeight(context),
        // SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 40),
        //   BtnGoMainScreen(context),
      ],
    );
  }

  //========================= Widget Select Date ================================

  Container SeclectNational(BuildContext context) {
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
            Icons.flag_outlined,
            color: Color(0xff68699C),
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: dropdownValueNational,
                hint: Text(
                  'الجنسية',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
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
                    dropdownValueNational = newValue;
                    print("dropdownValueCategory = " + dropdownValueNational);
                  });
                },
                items: <String>['Egypt', 'Sa'].map((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade700)),
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
  Container SeclectDate(BuildContext context) {
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
                prefixIcon: Icon(Icons.date_range, color: Color(0xff68699C)),
                border: InputBorder.none,
                hintText: "date of Birth".tr(),
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                //    labelText: "date of Birth".tr(),
                //        labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ),
          ),
          Icon(
            Icons.arrow_drop_down_rounded,
            size: 40,
            color: Color(0xff68699C),
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }

//========================= Widget Btn Go Main Screen ================================

  Container BtnGoMainScreen(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      height: (50 / MediaQuery.of(context).size.height) *
          MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(bottom: 10),
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return MainScreen();
          }));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(0xff2C2B53),
        child: Text(
          "تحديث",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

//========================= Widget Input Weight ================================

  Container InputWeight(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Flexible(
              flex: 4,
              child: TextFieldLocal(
                  context: context,
                  TextField: "weight".tr(),
                  iconSelect: Icons.anchor)),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300)),
              child: DropdownButton(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down, color: Color(0xff68699C)),
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
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

//========================= Widget Card Selected================================

  Container CardSelected() {
    return Container(
      margin: EdgeInsets.only(top: 10),
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
                          fontSize: 22,
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
                      (SeclectBtn == true) ? Color(0xff68699C) : Colors.white,
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
                          fontSize: 22,
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
                      (SeclectBtn == false) ? Color(0xff68699C) : Colors.white,
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

//============================Widget - TextFieldLocal ==================================
  Container TextFieldLocal(
      {BuildContext context, String TextField, var iconSelect}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(iconSelect, color: Color(0xff68699C)),
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
