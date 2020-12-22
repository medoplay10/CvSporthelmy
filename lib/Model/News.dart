import 'package:flutter/cupertino.dart';

class News {
  String NameClub;
  String titleNews;
  String contentNews;
  var IconClub;
  String ImageUrl;

  News(
      {@required this.NameClub,
      @required this.titleNews,
      @required this.contentNews,
      @required this.IconClub,
      @required this.ImageUrl});
}
