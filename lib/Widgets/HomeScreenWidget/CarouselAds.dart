import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv_sports/Model/Sports.dart';
import 'package:flutter/material.dart';

class CarouselAds extends StatefulWidget {

  final List<Sports> listSport;

  CarouselAds({@required this.listSport});
  @override
  _CarouselAdsState createState() => _CarouselAdsState();
}

class _CarouselAdsState extends State<CarouselAds> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.only(top: 2.0, right: 5),
          child: CarouselSlider.builder(
            itemCount:widget.listSport.length,
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height * .23,
                aspectRatio: 16 / 9,
                viewportFraction: .95,
                enlargeCenterPage: true,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            itemBuilder: (ctx, index) {
              return ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    widget.listSport[index].UrlImage,
                    fit: BoxFit.fill,

                    // height: MediaQuery.of(context).size.height * .30,
                    // width: MediaQuery.of(context).size.width,
                  ));
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.listSport.map((url) {
            int index = widget.listSport.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.only(bottom: 8, right: 5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
