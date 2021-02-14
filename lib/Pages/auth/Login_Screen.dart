import 'package:cv_sports/AuthFuntions/GoogleSignInProvider.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/create_button.dart';
import 'package:sign_button/sign_button.dart';

import 'package:bot_toast/bot_toast.dart';



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
// "assets/images/login.png",
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            "assets/images/login.png",
            alignment: Alignment.topRight,
            scale: 1.2,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height *.18,
            child: Column(
              children: [
                SignInButton(
                    buttonType: ButtonType.google,
                    width: MediaQuery.of(context).size.width * .6,
                    onPressed: () {
                      GoogleSignInProvider().signGoogleFun(context: context);
                    }),
                SizedBox(
                  height: 10,
                ),
                SignInButton(
                    buttonType: ButtonType.apple,
                    width: MediaQuery.of(context).size.width * .6,
                    onPressed: () {
                      BotToast.showText(
                        text: "جارى التطوير",
                        contentColor: Colors.blue,
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                SignInButton(
                    buttonType: ButtonType.facebook,
                    width: MediaQuery.of(context).size.width * .6,
                    onPressed: () {
                      BotToast.showText(
                        text: "جارى التطوير",
                        contentColor: Colors.blue,
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}