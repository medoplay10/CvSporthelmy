import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'SignUp_Screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  print("Hight = "+ (80 /MediaQuery.of(context).size.height  ).toString());
    //  print("Hight = "+ (MediaQuery.of(context).size.width  * .63 ).toString());

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: double.infinity,
                    alignment: Alignment.topRight,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          "assets/images/background_login.png",
                          height: MediaQuery.of(context).size.height * .62,
                        ),
                        Positioned(
                          right: 0,
                          bottom: MediaQuery
                              .of(context)
                              .size
                              .height * 0.096,
                          child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .63,
                              alignment: Alignment.centerRight,
                              child: Text(
                                "تسجيل الدخول باستخدام بريدك الالكترونى وكلمة المرور",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              )),
                        ),
                      ],
                    )),
                Positioned(
                  top: MediaQuery.of(context).size.height * .53,
                  bottom: 0,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: TextFormField(
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon:
                                  Icon(Icons.email, color: Color(0xff68699C)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: "ادخل بريدك الالكترونى",
                              labelStyle: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade700),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: TextFormField(
                            obscureText: true,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                  Icons.lock, color: Color(0xff68699C)),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: "ادخل رقمك السرى",
                              labelStyle: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: MediaQuery.of(context).size.height * .73,
                  child: Container(
                      alignment: Alignment.topCenter,
                      child: Text("هل نسيت كلمة السر ؟")),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .78,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 50,
                    margin: EdgeInsets.only(bottom: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xff2C2B53),
                      child: Text(
                        "signin".tr(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ليس لديك حساب؟"),
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
                    "سجل؟",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
