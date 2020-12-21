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
                // width: 300,
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
}
