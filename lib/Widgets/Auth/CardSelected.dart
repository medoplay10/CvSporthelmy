import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardSelected extends StatefulWidget {
  bool selectBtn ;

  CardSelected({ @required this.selectBtn });

  @override
  _CardSelectedState createState() => _CardSelectedState();
}

class _CardSelectedState extends State<CardSelected> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
              widget.  selectBtn = true;
              });
            },
            child: Container(
                alignment: Alignment.center,
           //     width: MediaQuery.of(context).size.width * .40,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ذكر",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(18),
                          color: (widget.  selectBtn == true)
                              ? Colors.white
                              : Colors.black),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    FaIcon(FontAwesomeIcons.male,
                        size: 45,
                        color:
                        (widget.  selectBtn == true) ? Colors.white : Colors.black),
                  ],
                ),
                decoration: BoxDecoration(
                  color:
                  (widget.  selectBtn == true) ? Color(0xff2C2B53) : Colors.white,
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
                widget.  selectBtn = false;
              });
            },
            child: Container(
              alignment: Alignment.center,
          //      width: MediaQuery.of(context).size.width * .40,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "انثى",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(18),
                          color: (widget.  selectBtn == false)
                              ? Colors.white
                              : Colors.black),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    FaIcon(FontAwesomeIcons.male,
                        size: 45,
                        color:
                        (widget.  selectBtn == false) ? Colors.white : Colors.black)
                  ],
                ),
                decoration: BoxDecoration(
                  color:
                  (widget.  selectBtn == false) ? Color(0xff2C2B53) : Colors.white,
                  border: Border.all(
                    color: Colors.grey, //                   <--- border color
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(
                      20.0) //                 <--- border radius here
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
