import 'package:flutter/material.dart';

class NewsCards {
  Row RowShowNews(
      {String MainImage,
      var IconClub,
      String NameClub,
      String TitalNews,
      String ContantNews}) {
    return Row(
      children: [
        //  SizedBox(width: 20,),
        Flexible(
          flex: 2,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                MainImage,
                fit: BoxFit.fill,
                height: 72,
                width: 300,
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 4,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(IconClub),
                  SizedBox(
                    width: 10,
                  ),
                  Text(NameClub)
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                TitalNews,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                ContantNews,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        )
      ],
    );
  }

//
// Card Gaidss({BuildContext context}){
//   return  Card(
//     elevation: 5,
//
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20)),
//     child: Container(
//       width: MediaQuery
//           .of(context)
//           .size
//           .width * 0.85,
//       height: 300,
//       alignment: Alignment.center,
//       child: Row(
//         children: [
//           Expanded(
//             flex: 4,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(5),
//                             width: (60 / Mediawidth) * Mediawidth,
//                             height: (60 / Mediaheight) * Mediaheight,
//                             child: ClipOval(
//                               child: Material(
//                                 color: Color(0xffC7C9EA), // button color
//                                 child: InkWell(
//                                   splashColor: Colors.red, // inkwell color
//                                   child: SizedBox(
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Color(0xff68699C),
//                                         size: 20,
//                                       )),
//                                   onTap: () {},
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 5,),
//                           Text("يوسف عطا"),
//                           Text("مهاجم"),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       width: 1,
//                       height:140,
//                       color: Colors.grey.shade400,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(5),
//                             width: (60 / Mediawidth) * Mediawidth,
//                             height: (60 / Mediaheight) * Mediaheight,
//                             child: ClipOval(
//                               child: Material(
//                                 color: Color(0xffC7C9EA), // button color
//                                 child: InkWell(
//                                   splashColor: Colors.red, // inkwell color
//                                   child: SizedBox(
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Color(0xff68699C),
//                                         size: 20,
//                                       )),
//                                   onTap: () {},
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 5,),
//                           Text("يوسف عطا"),
//                           Text("مهاجم"),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 Divider(thickness: 2,),
//
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(5),
//                             width: (60 / Mediawidth) * Mediawidth,
//                             height: (60 / Mediaheight) * Mediaheight,
//                             child: ClipOval(
//                               child: Material(
//                                 color: Color(0xffC7C9EA), // button color
//                                 child: InkWell(
//                                   splashColor: Colors.red, // inkwell color
//                                   child: SizedBox(
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Color(0xff68699C),
//                                         size: 20,
//                                       )),
//                                   onTap: () {},
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 5,),
//                           Text("يوسف عطا"),
//                           Text("مهاجم"),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       width: 1,
//                       height:140,
//                       color: Colors.grey.shade400,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(5),
//                             width: (60 / Mediawidth) * Mediawidth,
//                             height: (60 / Mediaheight) * Mediaheight,
//                             child: ClipOval(
//                               child: Material(
//                                 color: Color(0xffC7C9EA), // button color
//                                 child: InkWell(
//                                   splashColor: Colors.red, // inkwell color
//                                   child: SizedBox(
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Color(0xff68699C),
//                                         size: 20,
//                                       )),
//                                   onTap: () {},
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 5,),
//                           Text("يوسف عطا"),
//                           Text("مهاجم"),
//                         ],
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//                 height: 300,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
//                   color: Color(0xffE3E7F1),
//                 ),
//
//                 child: Column(
//                   mainAxisAlignment:MainAxisAlignment.center,
//
//                   children: [
//                     Text("اللاعبين"),
//                     Image.asset("assets/images/Player.png"),
//                     SizedBox(height: 10,),
//                     Container(
//                       width: MediaQuery
//                           .of(context)
//                           .size
//                           .width * 0.20,
//                       height: 30,
//                       margin: EdgeInsets.only(bottom: 10),
//
//                       child: RaisedButton(
//                         onPressed: () {
//                           Navigator.of(context).pushReplacement(
//                               MaterialPageRoute(builder: (context) {
//                                 return MainScreen();
//                               }));
//                         },
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25)),
//                         color: Color(0xffA5B0CC),
//                         child: Text(
//                           "المزيد",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     )
//
//                   ],
//                 )
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }
}
