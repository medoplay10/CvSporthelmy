import 'package:cv_sports/Pages/home/MainScreen.dart';
import 'package:cv_sports/Widgets/Globle/BottomApp.dart';
import 'package:cv_sports/Widgets/Globle/InputFieldMake.dart';
import 'package:cv_sports/Widgets/Globle/InputPhoneByCountry.dart';
import 'package:cv_sports/Widgets/Auth/NoHaveAccount.dart';
import 'package:cv_sports/Widgets/SizeBoxHeight.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'SignUp_Screen.dart';

class LoginScreen extends StatelessWidget {



  FocusNode touchFocusPassword = new FocusNode();
  FocusNode touchFocusText = new FocusNode();

  final  controllerInputPassword = TextEditingController();
  final nameUserController = TextEditingController();
  void unFocus() {
    touchFocusText.unfocus();
    touchFocusPassword.unfocus();
  }
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ()=> unFocus(),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(

            image: DecorationImage(
              alignment: Alignment.topRight,
              scale: 1.4,
              image: AssetImage(

                "assets/images/login.png",

              ),
              //fit: BoxFit.fitWidth,
            ),
            //     shape: BoxShape.circle,
          ),
          child: Container(
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * .115),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InputFieldMake(
                  title: "البريد الالكترونى",

                  inputController: nameUserController,
                  touchFocus: touchFocusText,
                  iconInput: Icons.email,
                  validatorInput: (input) {
                    if (input.trim().length <= 0) {
                      return "من فضلك ضع بريدك";
                    } else if (input.trim().length <= 5) {
                      return "بريدك لا يجب ان يقل عن 5 حروف";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                InputFieldMake(
                  title: "رقم السرى",
                   hideText: true,
                  inputController: controllerInputPassword,
                  touchFocus: touchFocusPassword,
                  iconInput: Icons.lock,
                  validatorInput: (input) {
                    if (input.trim().length <= 0) {
                      return "من فضلك ضع رقم السرى";
                    } else if (input.trim().length <= 6) {
                      return "رقم السرى لا يجب ان يقل عن 6 حروف";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),

                BottomApp(
                  title: "signin".tr(),
                  functionButton:(){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) {
                          return MainScreen();
                        }));
                  },
                  setWidth: .8,
                  oneColor: Color(0xff2C2B53),
                  twoColor: Color(0xff2C2B53),
                  colorTitle: Colors.white,
                ),


                SizedBox(
                  height: 8,
                ),
                NoHaveAccount(),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Color(0xff3b5998),
                      ),
                      onPressed: () {},
                      iconSize: 30,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          color: Color(0xffcf2d48),
                        ),
                        onPressed: () {},
                        iconSize: 30),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.apple,
                          color: Color(0xff37474f),
                        ),
                        //37474f
                        onPressed: () {},
                        iconSize: 30),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
