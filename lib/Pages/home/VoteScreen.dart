import 'package:cv_sports/Pages/auth/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../ProviderAll.dart';
import 'MainScreen.dart';

class VoteScreen extends StatefulWidget {
  @override
  _VoteScreenState createState() => _VoteScreenState();
}

class _VoteScreenState extends State<VoteScreen> {
  String sortValueFilter;

  @override
  void didChangeDependencies() {
    Provider.of<ProviderConstants>(context, listen: false)
        .ChangeIndexTap(Value: 0);
    super.didChangeDependencies();
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
          "التصويتات",
          style: TextStyle(fontSize: ScreenUtil().setSp(18)),
        ),
        centerTitle: true,
      ),
      body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              RowVoteCards(context),
            ],
          )),
    );
  }

//=============================== Widget Row Posts Cards===========================

  Card RowVoteCards(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              " هل تؤيد اعطاء نادى القرن الاروبى الى ريال مدريد ؟",
              style: TextStyle(fontSize: ScreenUtil().setSp(14)),
              textAlign: TextAlign.center,
            ),
            Column_Sort(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "التصويت",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(14),
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.red),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "النتائج",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(14), color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  //=================  Widget _  Sort ========================
  Column Column_Sort(BuildContext context) {
    return Column(
      children: <Widget>[
        _myRadioButton(
          title: "نعم",
          value: "نعم",
          onChanged: (newValue) => setState(() {
            sortValueFilter = newValue;
            print("_groupValue " + sortValueFilter);
          }),
        ),
        _myRadioButton(
          title: "لا",
          value: "لا",
          onChanged: (newValue) => setState(() {
            sortValueFilter = newValue;
            print("_groupValue " + sortValueFilter);
          }),
        ),
      ],
    );
  }

  //=================  Widget _my Radio Button ========================

  RadioListTile _myRadioButton(
      {String title, String value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: sortValueFilter,
      onChanged: onChanged,
      activeColor: Colors.green,
      title: Text(
        title,
        style: TextStyle(fontSize: ScreenUtil().setSp(14)),
      ),
    );
  }
}
