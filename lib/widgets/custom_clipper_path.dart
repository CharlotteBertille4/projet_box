import 'package:flutter/cupertino.dart';

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // debugPrint(size.height.toString());
    Path path = Path();
    var childHeight = size.height;
    var childWidth = size.width;

    path.moveTo(childWidth * 1.141333, childHeight * 0.6708062);

    path.cubicTo(
      childWidth * 1.141333,
      childHeight * 1.316467,
      childWidth * 1.062709,
      childHeight * 0.8132561,
      childWidth * 0.6731653,
      childHeight * 0.8132561,
    );

    path.cubicTo(
      childWidth * 0.2836187,
      childHeight * 0.8132561,
      childWidth * -0.2693333,
      childHeight * 1.316467,
      childWidth * -0.2693333,
      childHeight * 0.6708062,
    );

    path.cubicTo(
      childWidth * -0.2693333,
      childHeight * 0.02514277,
      childWidth * 0.04645493,
      childHeight * -0.4982699,
      childWidth * 0.4360000,
      childHeight * -0.4982699,
    );

    path.cubicTo(
      childWidth * 0.8255440,
      childHeight * -0.4982699,
      childWidth * 1.141333,
      childHeight * 0.02514277,
      childWidth * 1.141333,
      childHeight * 0.6708062,
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
