import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:cv_sports/Widgets/SizeBoxHeight.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'SignUp_Screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Color(0xffF4F7FF)));
    var Mediaheight = MediaQuery.of(context).size.height;
    var Mediawidth = MediaQuery.of(context).size.width;
    print(Mediaheight.toString());
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage(
              "assets/images/login.png",
            ),
            //fit: BoxFit.fitWidth,
          ),
          //     shape: BoxShape.circle,
        ),
        child: Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * .40),
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    keyboardType: TextInputType.phone,
                    validator: (input) {
                      if (input.trim().length == 0) {
                        return "من فضلك ضع رقمك";
                      } else if (input.trim().length < 9) {
                        return "من فضلك ضع 9 ارقام";
                      }
                      return null;
                    },
                    maxLength: 9,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon:
                          Icon(Icons.phone_android, color: Color(0xff68699C)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "ادخل هاتفك",
                      labelStyle:
                          TextStyle(fontSize: 16, color: Colors.grey.shade700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: (50 / MediaQuery.of(context).size.height) *
                        MediaQuery.of(context).size.height,
                    margin: EdgeInsets.only(bottom: 10),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return MainScreen();
                        }));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xff2C2B53),
                      child: Text(
                        "signin".tr(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("noAccount".tr()),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        }));
                      },
                      child: Text(
                        "signUpHere".tr(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
