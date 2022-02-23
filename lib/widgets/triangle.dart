import 'package:flutter/material.dart';

class DrawTriangleShape extends CustomPainter {
  const DrawTriangleShape({
    required this.color,
  });
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * 1 / 2, size.height * 1 / 4);
    path.lineTo(size.width * 1 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6, size.height * 3 / 4);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
