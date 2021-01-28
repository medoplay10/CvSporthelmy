import 'package:cv_sports/Widgets/SentDataButtom.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:easy_localization/easy_localization.dart' as easy;

class AddnewUserScreen extends StatefulWidget {
  @override
  _AddnewUserScreenState createState() => _AddnewUserScreenState();
}

class _AddnewUserScreenState extends State<AddnewUserScreen> {
  String CountryCode = "+20";

  PhoneNumber number = PhoneNumber(isoCode: 'EG');

  final TextEditingController controller = TextEditingController();

  String dropdownValueNational;

  String dropdownValueGameSelect;
  List<String> ListGameSelect = ["كرة قدم", "كرة طائرة", "مصارعة"];

  String dropdownValueGameKindSelect;
  List<String> ListGameKindSelect = ["مترجمين", "مصورين", "سمسار"];

  String dropdownValueNationalSelect;
  List<String> ListNationalSelect = ["القاهرة", "مكة المكرمة", "الرياض"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF9FAFF),
        centerTitle: true,
        title: Text(
          "اكمل الملف الشخصي",
          style: TextStyle(fontSize: ScreenUtil().setSp(16)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //    InputImage(),
            //  SizeBoxHeight(Mediaheight: Mediaheight, SizeWant: 15),
            TextFieldLocal(
                context: context,
                TextField: "الاسم كامل",
                iconSelect: Icons.person),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Icon(
                    Icons.sports_volleyball,
                    //   Icons.flag_outlined,
                    color: Color(0xff68699C),
                    size: 28,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValueGameSelect,
                        hint: Text(
                          "اللعبة",
                          // 'الجنسية',
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(16),
                              color: Colors.black),
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 40,
                          color: Color(0xff68699C),
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValueGameSelect = newValue;
                            print(newValue);
                            print("dropValueId" + dropdownValueGameSelect);
                          });
                        },
                        items: ListGameSelect.map((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(14),
                                    color: Colors.black)),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 10),
            //   padding: EdgeInsets.all(10),
            //   height: MediaQuery.of(context).size.height * 0.08,
            //   width: MediaQuery.of(context).size.width * 0.85,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       border: Border.all(color: Colors.grey.shade300)),
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.sports,
            //         //   Icons.flag_outlined,
            //         color: Color(0xff68699C),
            //         size: 28,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Expanded(
            //         child: DropdownButtonHideUnderline(
            //           child: DropdownButton<String>(
            //             isExpanded: true,
            //             value: dropdownValueGameKindSelect,
            //             hint: Text(
            //               "ممارسة اللعبة",
            //               // 'الجنسية',
            //               style: TextStyle(
            //                   fontSize: ScreenUtil().setSp(16),
            //                   color: Colors.black),
            //             ),
            //             icon: Icon(
            //               Icons.arrow_drop_down_rounded,
            //               size: 40,
            //               color: Color(0xff68699C),
            //             ),
            //             iconSize: 24,
            //             elevation: 16,
            //             style: TextStyle(color: Colors.deepPurple),
            //             onChanged: (String newValue) {
            //               setState(() {
            //                 dropdownValueGameKindSelect = newValue;
            //                 print(newValue);
            //                 print("dropValueId" + dropdownValueGameKindSelect);
            //               });
            //             },
            //             items: ListGameKindSelect.map((value) {
            //               return DropdownMenuItem<String>(
            //                 value: value,
            //                 child: Text(value,
            //                     style: TextStyle(
            //                         fontSize: ScreenUtil().setSp(14),
            //                         color: Colors.black)),
            //               );
            //             }).toList(),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    //   Icons.flag_outlined,
                    color: Color(0xff68699C),
                    size: 28,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValueNationalSelect,
                        hint: Text(
                          "مكان العمل",
                          // 'الجنسية',
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(16),
                              color: Colors.black),
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 40,
                          color: Color(0xff68699C),
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValueNationalSelect = newValue;
                            print(newValue);
                            print("dropValueId" + dropdownValueNationalSelect);
                          });
                        },
                        items: ListNationalSelect.map((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(14),
                                    color: Colors.black)),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // TextFieldLocal(
            //     context: context,
            //     TextField: "مكان العمل",
            //     iconSelect: Icons.location_on_rounded),
            SeclectNational(context),
            SeclectDate(context: context, title: "تاريخ الميلاد"),
            SeclectDate(context: context, title: "بداية العقد"),
            SeclectDate(context: context, title: "نهاية العقد"),
            SizedBox(
              height: 10,
            ),
            // InputPhone(context),
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

//============================= Seclect National =======================
  Container SeclectNational(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        children: [
          Icon(
            Icons.flag_outlined,
            color: Color(0xff68699C),
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: dropdownValueNational,
                hint: Text('الجنسية',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(16), color: Colors.black)),
                icon: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 40,
                  color: Color(0xff68699C),
                ),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValueNational = newValue;
                    print("dropdownValueCategory = " + dropdownValueNational);
                  });
                },
                items: <String>['مصرى', 'سعودى'].map((value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(14),
                              color: Colors.black)));
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

//========================= Widget Seclect Date ================================
  Container SeclectDate({BuildContext context, String title}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: DateTimeField(
              onChanged: (date) {
                print("date is = " + date.toString());
              },
              validator: (date) => date == null ? 'التاريخ لو سمحت' : null,
              onShowPicker: (context, currentValue) {
                return showDatePicker(
                    context: context,
                    firstDate: DateTime(1940),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
              },
              format: DateFormat("yyyy-MM-dd"),
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(16), color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF9FAFF),
                prefixIcon: Icon(Icons.date_range, color: Color(0xff68699C)),
                border: InputBorder.none,
                hintText: title,

                hintStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(14),
                    color: Colors.grey.shade700),
                //    labelText: "date of Birth".tr(),
                //        labelStyle: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ),
          ),
          Icon(
            Icons.arrow_drop_down_rounded,
            size: 40,
            color: Color(0xff2C2B53),
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }

//============================= Row AddT witter =======================

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

//============================= Row Add Instagram =======================

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

//============================= Row Add Facebook =======================

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

//============================= Row Add Snapchat Ghost =======================

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

//============================= Input Image =======================

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

//============================= Input Phone =======================

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
                    color: Colors.grey.shade700),
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

//============================= Text Field Local  =======================

  Container TextFieldLocal(
      {BuildContext context, String TextField, var iconSelect}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        controller: controller,
        style: TextStyle(fontSize: ScreenUtil().setSp(16), color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF9FAFF),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
              color: Color(0xff68699C),
            ),
            onPressed: () {
              controller.clear();
            },
            padding: EdgeInsets.only(left: 12),
          ),
          prefixIcon: Icon(
            iconSelect,
            color: Color(0xff68699C),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: TextField,
          labelStyle: TextStyle(
              fontSize: ScreenUtil().setSp(14), color: Colors.grey.shade700),
        ),
      ),
    );
  }
}
