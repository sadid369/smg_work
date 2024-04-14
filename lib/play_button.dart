// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GradientPlayButton extends StatelessWidget {
  final String buttonText;
  final Color gColor1;
  final Color gColor2;

  const GradientPlayButton({
    super.key,
    required this.buttonText,
    required this.gColor1,
    required this.gColor2,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Define the action when the button is pressed
          print('Play button pressed');
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                gColor1,
                gColor2,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            width: 150,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
