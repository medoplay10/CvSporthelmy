import 'package:cv_sports/Widgets/SizeBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:easy_localization/easy_localization.dart' as easy;

import 'ComplateProfile_Screen.dart';
import 'Login_Screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String CountryCode = "+20";
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  final TextEditingController controller = TextEditingController();
  TextEditingController controllerPinText = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery
        .of(context)
        .size
        .height;
    var Mediawidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "signup".tr(),
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputImage(Mediawidth, Mediaheight),
              SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 15),
              TextFieldLocal(
                  context: context,
                  TextField: "name".tr(),
                  iconSelect: Icons.person),
              SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 10),
              InputPhone(context),
              SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 10),
              TextFieldLocal(
                  context: context,
                  TextField: "email".tr(),
                  iconSelect: Icons.email),
              // SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 5),
              // TextFieldPassword(
              //     context: context, TextField: "PasswordEdit".tr()),
              // SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 5),
              // TextFieldPassword(
              //     context: context, TextField: "PasswordEditAgain".tr()),
              // SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 15),

              SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 140),
              Btn_SignUp(context),
              Row_TextHaveAccount(context)
            ],
          ),
        ),
      ),
    );
  }

//============================Widget - InputImage ==================================
  Row InputImage(double Mediawidth, double Mediaheight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: (110 / Mediawidth) * Mediawidth,
          height: (110 / Mediaheight) * Mediaheight,
          child: ClipOval(
            child: Material(
              color: Color(0xffC7C9EA), // button color
              child: InkWell(
                splashColor: Colors.red, // inkwell color
                child: SizedBox(
                    child: Icon(
                      Icons.person,
                      color: Color(0xff68699C),
                      size: 50,
                    )),
                onTap: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }

//============================Widget - InputPhone ==================================
  Container InputPhone(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.85,
      height: (60 / MediaQuery
          .of(context)
          .size
          .height) * MediaQuery
          .of(context)
          .size
          .height,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.phone,
            color: Color(0xff68699C),
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
            // flex: 3,
            child: InternationalPhoneNumberInput(
              textStyle: TextStyle(fontSize: 18, color: Colors.black),
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              maxLength: 10,
              inputDecoration: InputDecoration(
                hintText: "ادخل هاتفك",
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.DROPDOWN,
                backgroundColor: Colors.white,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: TextStyle(color: Colors.black),
              initialValue: number,
              textFieldController: controller,
              inputBorder: OutlineInputBorder(),
            ),
          ),

        ],
      ),
    );
  }

  //============================Widget - Row_TextHaveAccount ==================================
  Row Row_TextHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("HaveAccount".tr()),
        SizedBox(
          width: 5,
        ),
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
            child: Text(
              "signin".tr(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ))
      ],
    );
  }

//============================Widget - Btn_SignUp ==================================
  Container Btn_SignUp(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      height: 50,
      margin: EdgeInsets.only(bottom: 10),
      child: RaisedButton(
        onPressed: () => displayBottomSheet(context),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(0xff2C2B53),
        child: Text(
          "SignUpBtn".tr(),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

//============================Widget - TextFieldPassword ==================================
  Container TextFieldPassword({BuildContext context, String TextField}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        obscureText: true,
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.lock, color: Color(0xff68699C)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: TextField,
          labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
      ),
    );
  }

//============================Widget - TextFieldLocal ==================================
  Container TextFieldLocal({BuildContext context, String TextField, var iconSelect }) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.85,
      child: TextFormField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(iconSelect, color: Color(0xff68699C),),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: TextField,
          labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
      ),
    );
  }

//============================Widget - displayBottomSheet ==================================

  void displayBottomSheet(BuildContext context) {
    controllerPinText = TextEditingController();
    controllerPinText.clear();
    showModalBottomSheet(
      //  isDismissible: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
        ),
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.5,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                Text("Verification".tr(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text("EnterPicCode".tr(), textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: PinCodeTextField(
                      appContext: context,

                      length: 4,
                      obscureText: false,
                      cursorColor: Colors.white,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: Duration(milliseconds: 300),

                      keyboardType: TextInputType.phone,
                      controller: controllerPinText,
                      onCompleted: (v) {
                        controllerPinText.text = v;
                      },
                      onChanged: (value) {
                        print(value);
                      },

                    ),
                  ),
                ),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("GetPinCode".tr()),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return SignUpScreen();
                              }));
                        },
                        child: Text(
                          "GetPinCodeAgain".tr(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ))
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.80,
                  height: (50 / MediaQuery
                      .of(context)
                      .size
                      .height) * MediaQuery
                      .of(context)
                      .size
                      .height,
                  margin: EdgeInsets.only(bottom: 10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ComplateProfileScreen();
                      }));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color(0xff2C2B53),
                    child: Text(
                      "VerificationBtn".tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
