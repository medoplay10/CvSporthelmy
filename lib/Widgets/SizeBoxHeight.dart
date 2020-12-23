import 'package:flutter/material.dart';

class SizeBoxHeight extends StatelessWidget {
  double Mediaheight;
  double SizeWant;

  SizeBoxHeight({@required this.Mediaheight, @required this.SizeWant});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (SizeWant / Mediaheight) * Mediaheight,
    );
  }
}
