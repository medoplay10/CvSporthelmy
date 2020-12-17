import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String CountryCode = "+20";
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
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
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 15),
              TextFieldLocal(context: context, TextField: "name".tr()),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 5),
              InputPhone(context),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 5),
              TextFieldLocal(context: context, TextField: "email".tr()),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 5),
              TextFieldPassword(
                  context: context, TextField: "PasswordEdit".tr()),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 5),
              TextFieldPassword(
                  context: context, TextField: "PasswordEditAgain".tr()),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 15),
              Btn_SignUp(context),
              SizeBox_Space(Mediaheight: Mediaheight, SizeWant: 140),
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
      width: MediaQuery.of(context).size.width * 0.85,
      height: 60,
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
            color: Colors.grey,
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
          // Container(
          //   height: 40,
          //   width: 2,
          //   color: Colors.black,
          // ),
          //
          // Flexible(
          //  flex: 2,
          //   child: TextFormField(
          //     keyboardType: TextInputType.phone,
          //     maxLines: 1,
          //     style: TextStyle(fontSize: 18, color: Colors.black),
          //     decoration: InputDecoration(
          //       filled: true,
          //       fillColor: Colors.white,
          //     border: InputBorder.none,
          //     errorBorder: InputBorder.none,
          //     focusedBorder: InputBorder.none,
          //     disabledBorder: InputBorder.none,
          //     //  labelText: "name".tr(),
          //       hintText: "ادخل هاتفك",
          //     //  labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   width: 20,
          // )
        ],
      ),
    );
  }

  //============================Widget - SizeBox_Space ==================================
  SizedBox SizeBox_Space({double Mediaheight, double SizeWant}) {
    return SizedBox(
      height: (SizeWant / Mediaheight) * Mediaheight,
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
                return SignUpScreen();
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
        onPressed: () {},
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
          prefixIcon: Icon(Icons.lock),
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
  Container TextFieldLocal({BuildContext context, String TextField}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.person),
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
