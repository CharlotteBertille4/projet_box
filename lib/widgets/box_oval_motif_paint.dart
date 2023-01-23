import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';

class BoxOvalMotifPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height;
    final w = size.width;
    final circlePaint = Paint();
    circlePaint.color = motifColor.withOpacity(0.2);
    canvas.drawCircle(Offset(w, 0), 150, circlePaint);
    canvas.drawCircle(Offset(0.5 * w, -180), w, circlePaint);
    // canvas.drawCircle(Offset(0.5 * w, -100.h), 250.w, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
