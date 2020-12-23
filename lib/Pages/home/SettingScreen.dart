import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool SwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFF),
      appBar: AppBar(
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
                            "تسجيل خروج",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.signOutAlt,
                            color: Color(0xffFB9800),
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
                            "تعديل الملف الشخصي",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          leading: FaIcon(
                            FontAwesomeIcons.globe,
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
}
