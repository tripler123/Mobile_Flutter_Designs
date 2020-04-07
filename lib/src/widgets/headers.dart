import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615aab),
      child: CustomPaint(
        painter: _HeaderWavesPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Properties
    paint.color = Color(0xff615aab);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    // Draw the path
    path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.45);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    // Draw on canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Properties
    paint.color = Color(0xff615aab);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    // Draw the path
    path.moveTo(0, size.height * 0.35);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.5, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    // Draw on canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Properties
    paint.color = Color(0xff615aab);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    // Draw the path
    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    // Draw on canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  } 
}
