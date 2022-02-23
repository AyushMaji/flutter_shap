import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  const CirclePainter({
    required this.color,
  });
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 14, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
