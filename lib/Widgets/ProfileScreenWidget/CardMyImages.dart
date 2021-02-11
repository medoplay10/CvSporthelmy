import 'package:cv_sports/Pages/SubScreen/MyImagesDataProfile.dart';
import 'package:flutter/material.dart';

class CardMyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        //    color: BackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Expanded(

              child: Center(
                child: ListView.builder(
                    shrinkWrap: true,

                    scrollDirection:Axis.horizontal ,
                    itemCount: 2,

                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            "https://ronaldo.com/wp-content/uploads/2020/03/GettyImages-1201273079-1208205794-1209769370.jpg",

                            width: MediaQuery.of(context).size.width * .4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            ),


            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MyImagesDataProfile();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                    color: Color(0xffE7EBF8),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                //         height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width * 0.15,
                child: Text("+2"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
