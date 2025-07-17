import 'package:flutter/material.dart';

class CurvedBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    final Paint paint = Paint();

    // Purple curve
    paint.color = const Color(0xFF8A2BE2); // A shade of purple
    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(
        size.width * 0.25, size.height * 0.6,
        size.width * 0.5, size.height * 0.7);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.8,
        size.width, size.height * 0.7);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);

    // Blue curve (adjust color and path as needed to match the image)
    paint.color = const Color(0xFF4169E1); // A shade of blue
    path.reset();
    path.moveTo(0, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.3, size.height * 0.65,
        size.width * 0.6, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.85,
        size.width, size.height * 0.75);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}