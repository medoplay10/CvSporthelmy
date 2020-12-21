import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  String mainImage;
  var iconClub;
  String nameClub;
  String titleNews;
  String contentNews;

  NewsCard(
      {this.mainImage,
      this.iconClub,
      this.nameClub,
      this.titleNews,
      this.contentNews});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //  SizedBox(width: 20,),
        Flexible(
          flex: 2,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                mainImage,
                fit: BoxFit.fill,
                height: 72,
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(iconClub),
                  SizedBox(
                    width: 10,
                  ),
                  Text(nameClub)
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                titleNews,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                contentNews,
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
