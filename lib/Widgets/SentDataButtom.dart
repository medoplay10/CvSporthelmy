import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class SentDataButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      height: (50 / MediaQuery.of(context).size.height) *
          MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(bottom: 10),
      child: RaisedButton(
        onPressed: () {
          // Navigator.of(context).pushReplacement(
          //     MaterialPageRoute(builder: (context) {
          //       return MainScreen();
          //     }));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(0xff2C2B53),
        child: Text(
          "ارسال",
          style:
              TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(14)),
        ),
      ),
    );
  }
}
