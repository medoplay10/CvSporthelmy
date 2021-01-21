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
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width * .4,
              )),
        ),
        SizedBox(
          width: 5,
        ),
        Flexible(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network(iconClub,
                      fit: BoxFit.fill, height: 30, width: 30),
                  SizedBox(
                    width: 5,
                  ),
                  Text(nameClub)
                ],
              ),
              Text(
                titleNews,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
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
