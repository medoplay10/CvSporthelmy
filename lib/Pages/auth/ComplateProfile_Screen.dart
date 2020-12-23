import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:cv_sports/Widgets/SizeBoxWidth.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComplateProfileScreen extends StatefulWidget {
  @override
  _ComplateProfileScreenState createState() => _ComplateProfileScreenState();
}

class _ComplateProfileScreenState extends State<ComplateProfileScreen> {
  bool SeclectBtn = true;
  int currentValue = 20;
  String dropdownValue = 'KG';

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "ComplateProfile".tr(),
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "TitalComplateProfile".tr(),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 15),
              CardSelected(),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 15),
              TextFieldLocal(
                  context: context,
                  TextField: "name".tr(),
                  iconSelect: Icons.person),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 15),
              SeclectDate(context),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 15),
              TextFieldLocal(
                  context: context,
                  TextField: "Length".tr(),
                  iconSelect: Icons.height),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 15),
              InputWeight(context),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 60),
              BtnGoMainScreen(context)
            ],
          ),
        ),
      ),
    );
  }

//========================= Widget Seclect Date ================================
  Container SeclectDate(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: "date of Birth".tr(),
          labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
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

  Padding InputWeight(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
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
                      style: TextStyle(fontSize: 14),
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

//========================= Widget SizeBox_Space ================================

  SizedBox SizeBox_Space({double Mediaheight, double SizeWant}) {
    return SizedBox(
      height: (SizeWant / Mediaheight) * Mediaheight,
    );
  }

//========================= Widget Card Selected================================

  Row CardSelected() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              SeclectBtn = true;
            });
          },
          child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "Male".tr(),
                    style: TextStyle(
                        fontSize: 18,
                        color:
                        (SeclectBtn == true) ? Colors.white : Colors.black),
                  ),
                  SizeBoxWidth(Mediawidth: MediaQuery
                      .of(context)
                      .size
                      .width, SizeWant: 20,),
                  FaIcon(FontAwesomeIcons.male,
                      size: 40,
                      color:
                      (SeclectBtn == true) ? Colors.white : Colors.black),
                ],
              ),
              decoration: BoxDecoration(
                color: (SeclectBtn == true) ? Color(0xff68699C) : Colors.white,
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
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "Female".tr(),
                    style: TextStyle(
                        fontSize: 18,
                        color: (SeclectBtn == false)
                            ? Colors.white
                            : Colors.black),
                  ),
                  SizeBoxWidth(
                    Mediawidth: MediaQuery
                        .of(context)
                        .size
                        .width, SizeWant: 20,),
                  FaIcon(FontAwesomeIcons.male,
                      size: 40,
                      color:
                      (SeclectBtn == false) ? Colors.white : Colors.black)
                ],
              ),
              decoration: BoxDecoration(
                color: (SeclectBtn == false) ? Color(0xff68699C) : Colors.white,
                border: Border.all(
                  color: Colors.grey, //                   <--- border color
                ),
                borderRadius: BorderRadius.all(Radius.circular(
                    20.0) //                 <--- border radius here
                ),
              )),
        ),
      ],
    );
  }

//============================Widget - TextFieldLocal ==================================
  Container TextFieldLocal({BuildContext context, String TextField, var iconSelect}) {
    return Container(
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
          labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
      ),
    );
  }
}
