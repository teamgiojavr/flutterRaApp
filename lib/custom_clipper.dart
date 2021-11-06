import 'package:flutter/material.dart';

class CustomClipp extends CustomClipper<Path> {

  List<Offset> _extractPoints(String clipPath, Size size) {

    final points = List<Offset>.empty(growable: true);

    var tempString = clipPath.replaceAll("%", "");
    tempString = tempString.replaceAll(", ", ",");

    final pointStrings = tempString.split(",");

    for (final pointString in pointStrings) {
      final coord = pointString.split(" ");

      if (coord.length == 2) {
        points.add(
          Offset(
            (double.parse(coord[0]) * size.width / 100),
            (double.parse(coord[1]) * size.height / 100),
          ),
        );
      }
    }

    return points;
  }

  @override
  Path getClip(Size size) {
    //final path = Path();
    //final clipPath = "10% 0%, 100% 0, 100% 105%, 100% 70%, 100% 100%, 48% 92%, 0 84%, 0 63%, 0% 35%, 0 0";
    //final points = _extractPoints(clipPath, size);
    //path.addPolygon(points, true);
    //Path path = Path();
    //path.lineTo(0, size.height);
    //path.quadraticBezierTo(size.width/4, size.height - 30, size.width/2, size.height - 20);
    //path.quadraticBezierTo(3/4*size.width, size.height,
    //size.width, size.height - 15);
    //path.lineTo(size.width, 0);
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(size.width / 1, size.height, size.width, size.height - 90);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}