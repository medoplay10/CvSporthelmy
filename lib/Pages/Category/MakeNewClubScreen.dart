import 'package:cv_sports/Widgets/SentDataButtom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:easy_localization/easy_localization.dart' as easy;

class MakeNewClubScreen extends StatelessWidget {
  String CountryCode = "+20";
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  final TextEditingController controller = TextEditingController();

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
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputImage(),
            //  SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 15),
            TextFieldLocal(
                context: context,
                TextField: "name".tr(),
                iconSelect: Icons.person),
            //    SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 10),
            InputPhone(context),
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
                Text("تويتر")
              ],
            ),
          ),
          Expanded(
            flex: 5,
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
                  fontSize: 14,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 12),
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
                Text("انستجرام")
              ],
            ),
          ),
          Expanded(
            flex: 5,
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
                  fontSize: 12,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 14),
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
                Text("فيس بوك")
              ],
            ),
          ),
          Expanded(
            flex: 5,
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
                  fontSize: 12,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 14),
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
                Text("سناب شات")
              ],
            ),
          ),
          Expanded(
            flex: 5,
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
                  fontSize: 12,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 14),
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
      height: (60 / MediaQuery.of(context).size.height) *
          MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
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

  //============================Widget - TextFieldLocal ==================================
  Container TextFieldLocal(
      {BuildContext context, String TextField, var iconSelect}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        style: TextStyle(fontSize: 18, color: Colors.black),
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
          labelText: TextField,
          labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
      ),
    );
  }
}