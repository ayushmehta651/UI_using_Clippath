import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var firstEndPoint = Offset(size.width * 0.55, size.height - 250);
    var firstControlPoint = Offset(size.width * 0.40, size.height * 0.2);
    var secondEndPoint = Offset(size.width, size.height * 0.40);
    var secondControlPoint = Offset(size.width * 0.75, size.height * 0.99);

    Path path = Path()
      ..lineTo(0, size.height)
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
    return false;
  }
}
