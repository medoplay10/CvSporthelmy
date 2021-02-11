import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:cv_sports/Widgets/Globle/BottomApp.dart';
import 'package:cv_sports/Widgets/Auth/CardSelected.dart';
import 'package:cv_sports/Widgets/Globle/InputFieldMake.dart';
import 'package:cv_sports/Widgets/SizeBoxWidth.dart';
import 'package:cv_sports/Widgets/Globle/seclectData.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComplateProfileScreen extends StatefulWidget {
  @override
  _ComplateProfileScreenState createState() => _ComplateProfileScreenState();
}

class _ComplateProfileScreenState extends State<ComplateProfileScreen> {
  bool selectBtn ;
  String dropdownValue = 'KG';

  TextEditingController controllerPhone1 = TextEditingController();
  FocusNode focusPhone1 = new FocusNode();

  TextEditingController controllerPhone2 = TextEditingController();
  FocusNode focusPhone2= new FocusNode();

  TextEditingController controllerDateTime= TextEditingController();

  void unFocus() {
    focusPhone1.unfocus();
    focusPhone2.unfocus();
  

  }
  
  
  @override
  Widget build(BuildContext context) {

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
      body: SingleChildScrollView(
        child: Column(
          children: [


            CardSelected(selectBtn: selectBtn = true,),


            seclectDateTime(inputController: controllerDateTime,textHint: "date of Birth".tr(),),
            InputFieldMake(
              title: "رقم التواصل ١",
              isNumber: true,
              inputController: controllerPhone1,
              touchFocus: focusPhone1,
              iconInput: Icons.phone,
              validatorInput: (input) {
                if (input.trim().length <= 0) {
                  return "من فضلك ضع اسمك";
                } else if (input.trim().length <= 5) {
                  return "اسمك لا يجب ان يقل عن 5 حروف";
                }
                return null;
              },
            ),
            InputFieldMake(

              title:  "رقم التواصل ٢",
              isNumber: true,
              inputController: controllerPhone2,
              touchFocus: focusPhone2,
              iconInput: Icons.phone,
              validatorInput: (input) {
                if (input.trim().length <= 0) {
                  return "من فضلك ضع اسمك";
                } else if (input.trim().length <= 5) {
                  return "اسمك لا يجب ان يقل عن 5 حروف";
                }
                return null;
              },
            ),
            BottomApp(
              title:  "تحديث",
              setCircular: 10,
              functionButton:(){
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
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






}
