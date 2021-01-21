import 'package:cv_sports/Widgets/SentDataButtom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddPrize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
        actions: [
          Container(
              margin: EdgeInsets.only(left: 20), child: Icon(Icons.add_circle)),
        ],
        elevation: 0,
        backgroundColor: Color(0xffF9FAFF),
        centerTitle: true,
        title: Text(
          "اضافة او تعديل جوائز",
          style: TextStyle(fontSize: ScreenUtil().setSp(16)),
        ),
      ),
      body: Column(
        children: [
          RowAddPrize(context),
          RowAddPrize(context),
          RowAddPrize(context),
          RowAddPrize(context),
          Spacer(),
          SentDataButtom()
        ],
      ),
    );
  }

  Container RowAddPrize(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 14),
                  hintText: "اسم الجائزة",
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300)),
            child: CustomNumberPicker(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              //   customAddButton: IconButton(
              //     icon:FaIcon(FontAwesomeIcons.plus, size: 15,),
              //  onPressed: (){},
              //  ),
              // customMinusButton:IconButton(
              //
              //   icon:FaIcon(FontAwesomeIcons.minus,size: 15),
              //   onPressed: (){},
              // ) ,
              initialValue: 0,
              maxValue: 100,
              minValue: 0,
              step: 1,

              onValue: (value) {
                print(value.toString());
              },
            ),
          )
        ],
      ),
    );
  }
}
