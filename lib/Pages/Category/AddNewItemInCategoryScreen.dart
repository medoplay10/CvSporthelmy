import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/material.dart';
import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'FirstScreenComplate.dart';
import 'SecondScreenComplate.dart';

class AddNewItemInCategoryScreen extends StatefulWidget {
  @override
  _AddNewItemInCategoryScreenState createState() =>
      _AddNewItemInCategoryScreenState();
}

class _AddNewItemInCategoryScreenState
    extends State<AddNewItemInCategoryScreen> {
  bool SeclectBtn = true;
  String dropdownValue = 'KG';
  int currentStep = 0;
  String dropdownValueNational;

  List<FAStep> listStepper = [
    FAStep(
        title: Text(
          "بيانات شخصية",
          style: TextStyle(fontSize: 16),
        ),
        content: FirstScreenComplate(),
        isActive: true),
    FAStep(
        title: Text(
          "بيانات اللاعب",
          style: TextStyle(fontSize: 16),
        ),
        content: SecondScreenComplate(),
        isActive: true),
  ];

  showExitAuthDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => new AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: new Text(
                "الانتهاء من التسجيل",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new Text(
                    "سوف يتم التسجيل , هل متاكد من ادخال بيانتك ؟",
                    style: TextStyle(color: Color(0xff8E93A2), fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                            return MainScreen();
                          }));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          margin: const EdgeInsets.only(right: 2, left: 2),
                          decoration: BoxDecoration(
                              color: Color(0xff222B45),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)),
                          width: MediaQuery.of(context).size.width * 0.28,
                          alignment: Alignment.center,
                          child: Text(
                            "نعم متاكد",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          margin: const EdgeInsets.only(right: 2, left: 2),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey)),
                          width: MediaQuery.of(context).size.width * 0.28,
                          alignment: Alignment.center,
                          child: Text(
                            "تراجع",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
  }

  Container BtnGoMainScreen(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      height: (50 / MediaQuery.of(context).size.height) *
          MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(bottom: 10),
      child: RaisedButton(
        onPressed: () {
          StepContinue();
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(0xff2C2B53),
        child: Text(
          "التالى",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
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
      body: buildFaStepper(),
    );
  }

  FAStepper buildFaStepper() {
    return FAStepper(
      currentStep: currentStep,
      // List the steps you would like to have
      controlsBuilder: (BuildContext context,
          {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
        return BtnGoMainScreen(context);
      },

      onStepContinue: () {
        StepContinue();
      },
      // onStepCancel: (){
      //   setState(() {
      //     if(currentStep > 0){
      //       currentStep = currentStep -1;
      //     }else{
      //       currentStep = 0;
      //     }
      //   });
      // },
      titleHeight: 80,
      steps: listStepper,

      type: FAStepperType.horizontal,
      titleIconArrange: FAStepperTitleIconArrange.column,
      stepNumberColor: Color(0xff68699C),
      onStepTapped: (step) {
        setState(() {
          currentStep = step;
        });
      },
    );
  }

  void StepContinue() {
    setState(() {
      if (currentStep < listStepper.length - 1) {
        currentStep = currentStep + 1;
      } else {
        showExitAuthDialog();
        //   currentStep = 0;

      }
    });
  }
}
