import 'package:cv_sports/Pages/auth/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';
import 'MainScreen.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool SwitchValue = false;

  @override
  void initState() {
    Provider.of<ProviderConstants>(context, listen: false)
        .ChangeIndexTap(Value: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffF9FAFF),
        elevation: 0,
        title: Text(
          "الاعدادات",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        //  margin:EdgeInsets.symmetric(horizontal: 20) ,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerRight,
                  child: Text("اعدادات شخصية")),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 0)),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ListTile(
                          trailing: Icon(Icons.arrow_back_outlined,
                              color: Color(0xffFB9800)),
                          title: Text(
                            "تعديل الملف الشخصي",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.userAlt,
                            size: 18,
                            color: Color(0xffFB9800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        ListTile(
                          trailing: Icon(Icons.arrow_back_outlined,
                              color: Color(0xffFB9800)),
                          title: Text(
                            "تعديل كلمة المرور",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.lock,
                            size: 18,
                            color: Color(0xffFB9800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        InkWell(
                          onTap: () => showExitAuthDialog(),
                          child: ListTile(
                            trailing: Icon(Icons.arrow_back_outlined,
                                color: Color(0xffFB9800)),
                            title: Text(
                              "تسجيل خروج",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade700),
                            ),
                            leading: FaIcon(
                              FontAwesomeIcons.signOutAlt,
                              size: 18,
                              color: Color(0xffFB9800),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerRight,
                  child: Text("اعدادات عامة")),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 0)),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ListTile(
                          trailing: Icon(Icons.arrow_back_outlined,
                              color: Color(0xffFB9800)),
                          title: Text(
                            "اللغة",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.globe,
                            size: 18,
                            color: Color(0xffFB9800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        ListTile(
                          trailing: Switch(
                            value: SwitchValue,
                            activeColor: Color(0xff34C759),
                            onChanged: (v) {
                              setState(() {
                                SwitchValue = v;
                              });
                            },
                          ),
                          title: Text(
                            "الاشعارات",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.bell,
                            size: 18,
                            color: Color(0xffFB9800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        ListTile(
                          trailing: Icon(Icons.arrow_back_outlined,
                              color: Color(0xffFB9800)),
                          title: Text(
                            "اتصل بنا",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.phone,
                            size: 18,
                            color: Color(0xffFB9800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        ListTile(
                          trailing: Icon(Icons.arrow_back_outlined,
                              color: Color(0xffFB9800)),
                          title: Text(
                            "عن التطبيق",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.info,
                            size: 18,
                            color: Color(0xffFB9800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        ListTile(
                          trailing: Icon(Icons.arrow_back_outlined,
                              color: Color(0xffFB9800)),
                          title: Text(
                            "مشاركة التطبيق",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.shareAlt,
                            size: 18,
                            color: Color(0xffFB9800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        ListTile(
                          trailing: Icon(Icons.arrow_back_outlined,
                              color: Color(0xffFB9800)),
                          title: Text(
                            "الشروط و الاحكام",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.scroll,
                            size: 18,
                            color: Color(0xffFB9800),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  showExitAuthDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => new AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: new Text(
                "تسجيل خروج",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new Text(
                    " هل أنت متأكد من تسجيل خروجك بالتطبيق",
                    style: TextStyle(color: Color(0xff8E93A2), fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          margin: const EdgeInsets.only(right: 2, left: 2),
                          decoration: BoxDecoration(
                              color: Color(0xff222B45),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)),
                          width: MediaQuery.of(context).size.width * 0.28,
                          alignment: Alignment.center,
                          child: Text(
                            "خروج",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          margin: const EdgeInsets.only(right: 2, left: 2),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey)),
                          width: MediaQuery.of(context).size.width * 0.28,
                          alignment: Alignment.center,
                          child: Text(
                            "تراجع",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
  }
}
