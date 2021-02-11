import 'package:cv_sports/Widgets/Globle/InputFieldMake.dart';
import 'package:cv_sports/Widgets/SentDataButtom.dart';
import 'package:cv_sports/Widgets/Globle/seclectData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:easy_localization/easy_localization.dart' as easy;

class AddNewClubScreen extends StatelessWidget {
  String CountryCode = "+20";
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  final TextEditingController controller = TextEditingController();
  TextEditingController controllerDateTime= TextEditingController();

  TextEditingController controllerName = TextEditingController();
  FocusNode focusName = new FocusNode();

  TextEditingController controllerPlace = TextEditingController();
  FocusNode focusPlace = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF9FAFF),
        centerTitle: true,
        title: Text(
          "اكمل بيانات النادي",
          style: TextStyle(fontSize: ScreenUtil().setSp(16)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputImage(),
            //  SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 15),
            InputFieldMake(
              title: "اسم النادى",
              isNumber: true,
              inputController: controllerName,
              touchFocus: focusName,
              iconInput: Icons.person,
              validatorInput: (input) {
                if (input.trim().length <= 0) {
                  return "من فضلك ضع الاسم";
                } else if (input.trim().length <= 5) {
                  return "الاسم لا يجب ان يقل عن 5 حروف";
                }
                return null;
              },
            ),

            InputFieldMake(
              title: "مقر النادى",

              inputController: controllerPlace,
              touchFocus: focusPlace,
              iconInput: Icons.location_on,
              validatorInput: (input) {
                if (input.trim().length <= 0) {
                  return "من فضلك ضع الاسم";
                } else if (input.trim().length <= 5) {
                  return "الاسم لا يجب ان يقل عن 5 حروف";
                }
                return null;
              },
            ),
            InputPhone(context),
            seclectDateTime(inputController: controllerDateTime,textHint: "تاريخ التاسيس",),
            RowAddTwitter(context),
            RowAddInstagram(context),
            RowAddFacebook(context),
            RowAddSnapchatGhost(context),
            //   Spacer(),
            SentDataButtom()
          ],
        ),
      ),
    );
  }

  Container RowAddTwitter(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Color(0xff21A9F4),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("تويتر",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(14),
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: ScreenUtil().setSp(12)),
                  hintText: "اضف الرابط",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container RowAddInstagram(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Color(0xffFFDD55),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("انستجرام",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  hintText: "اضف الرابط",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container RowAddFacebook(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Color(0xff1977F2),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("فيس بوك",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  hintText: "اضف الرابط",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container RowAddSnapchatGhost(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.snapchatGhost,
                  color: Color(0xffFFEB3B),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("سناب شات",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  hintText: "اضف الرابط",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //============================Widget - InputImage ==================================
  Row InputImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          child: ClipOval(
            child: Material(
              color: Color(0xffC7C9EA), // button color
              child: InkWell(
                splashColor: Colors.red, // inkwell color
                child: SizedBox(
                    child: Icon(
                  Icons.shield,
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
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.only(left: 10),
      height: (60 / MediaQuery.of(context).size.height) *
          MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(10),
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
              textStyle: TextStyle(
                  fontSize: ScreenUtil().setSp(18), color: Colors.black),
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              maxLength: 10,
              inputDecoration: InputDecoration(
                hintText: "ادخل هاتفك",
                hintStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(16),
                    color: Colors.grey),
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

  //============================Widget - TextFieldLocal ==================================
  Container TextFieldLocal(
      {BuildContext context, String title, var iconSelect}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        style: TextStyle(fontSize: ScreenUtil().setSp(18), color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            iconSelect,
            color: Color(0xff68699C),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: title,
          labelStyle: TextStyle(
              fontSize: ScreenUtil().setSp(16), color: Colors.grey.shade700),
        ),
      ),
    );
  }
}
