import 'package:cv_sports/Model/Sports.dart';
import 'package:cv_sports/Pages/Category/OneCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class RowListSport extends StatelessWidget {
  final List<Sports> listSport;

  RowListSport({@required this.listSport});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //     margin: EdgeInsets.only(top: 2),
      height: MediaQuery.of(context).size.height * .135,
      child: ListView.builder(
          itemCount: listSport.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (index == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return OneCategory(
                      isClub: true,
                      itemSport: listSport[index],
                    );
                  }));
                } else {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return OneCategory(
                        isClub: false, itemSport: listSport[index]);
                  }));
                }
              },
              child: Container(
                margin: EdgeInsets.only(left: 8, right: 2),
                child: Column(
                  children: [
                    Container(
                      //   alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      width:  MediaQuery.of(context).size.width * .18,
                      height:  MediaQuery.of(context).size.height * .09,
                      child: ClipOval(
                        child: Material(
                          color: Color(0xff2C2B53), // button color
                          child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: Center(
                                child: Image.asset(
                                  listSport[index].iconData,
                                  // scale: 3,
                                  height:
                                  MediaQuery.of(context).size.height * .05,
                                  color: Colors.white,
                                  //    size: 25,
                                ),
                              )),
                        ),
                      ),
                    ),
                    Text(
                      listSport[index].Tital,
                      style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
