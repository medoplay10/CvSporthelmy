import 'package:flutter/material.dart';

class SizeBoxWidth extends StatelessWidget {
  double Mediawidth;
  double SizeWant;

  SizeBoxWidth({@required this.Mediawidth, @required this.SizeWant});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (SizeWant / Mediawidth) * Mediawidth,
    );
  }
}
