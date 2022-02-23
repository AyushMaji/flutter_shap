import 'package:flutter/material.dart';

class RectanglePainter extends CustomPainter {
  const RectanglePainter({
    required this.color,
  });
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final a = Offset(size.width * 1 / 6, size.height * 1 / 4);
    final b = Offset(size.width * 5 / 6, size.height * 3 / 4);
    final rect = Rect.fromPoints(a, b);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
