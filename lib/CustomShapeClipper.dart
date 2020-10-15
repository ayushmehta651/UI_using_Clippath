import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var firstEndPoint = Offset(size.width * 0.5, size.height - 30);
    var firstControlPoint = Offset(size.width * 0.25, size.height - 50);

    var secondEndPoint = Offset(size.width, size.height - 80);
    var secondControlPoint = Offset(size.width * 0.75, size.height - 20);

    Path path = Path()
      ..lineTo(0.0, size.height)
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy)
      ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
