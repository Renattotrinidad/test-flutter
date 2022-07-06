import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class CircleChart extends CustomPainter {
  final int currentIndex;

  CircleChart({
    required this.currentIndex,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    ///VAriable de angulo de dibujar
    var angle;

    ///Calcular angulo de pintar
    if (currentIndex == 1) {
      angle = pi / 2;
    } else if (currentIndex == 2) {
      angle = pi;
    } else if (currentIndex == 3) {
      angle = 3 * pi / 2;
    } else {
      angle = 2 * pi;
    }

    canvas.drawArc(
        rect,
        -pi / 2,
        -pi,
        false,
        Paint()
          ..color = const Color(0xFFff9800)
          ..strokeWidth = 38.0
          ..style = PaintingStyle.stroke);

    canvas.drawArc(
        rect,
        -pi / 2,
        3 * pi / 1.85,
        false,
        Paint()
          ..color = const Color(0xFFff748f)
          ..strokeWidth = 38.0
          ..style = PaintingStyle.stroke);

    canvas.drawArc(
        rect,
        -pi / 2,
        3 * pi / 2.4,
        false,
        Paint()
          ..color = const Color(0xFF69F0AE)
          ..strokeWidth = 60.0
          ..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;
}
