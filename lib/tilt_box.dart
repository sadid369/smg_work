// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TiltBox extends StatelessWidget {
  final String text;
  final Color gColor1;
  final Color gColor2;
  const TiltBox({
    super.key,
    required this.text,
    required this.gColor1,
    required this.gColor2,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BoxClipper(),
      child: Container(
        width: 150,
        height: 30,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            gColor1,
            gColor2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Text(
            '${text}     ',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class BoxClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width * 0.11, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.77, size.height);
    path.lineTo(size.width - size.width * 0.11, 0); //connect the top left
    return path;
    // return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
