// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:smg_work/tilt_box.dart';

class GameCard extends StatefulWidget {
  final Color bgGradient1;
  final Color bgGradient2;
  final Color buttonGradient1;
  final Color buttonGradient2;

  final num price;
  final num time;
  final String hourOrMin;
  final String tiltBoxText;

  const GameCard({
    super.key,
    required this.bgGradient1,
    required this.bgGradient2,
    required this.buttonGradient1,
    required this.buttonGradient2,
    required this.price,
    required this.time,
    required this.hourOrMin,
    required this.tiltBoxText,
  });

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 200,
      width: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            widget.bgGradient1,
            widget.bgGradient2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.center,
        ),
        border: Border.all(
          color: widget.buttonGradient1,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TiltBox(
                    text: widget.tiltBoxText,
                    gColor1: widget.buttonGradient1,
                    gColor2: widget.buttonGradient2),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(23),
                    gradient: LinearGradient(
                      colors: [
                        widget.buttonGradient1,
                        widget.buttonGradient2,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Play',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "What's Includes",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
          ),
          Divider(
            color: widget.buttonGradient1,
            thickness: 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Price",
                style: TextStyle(
                  // fontWeight: FontWeight.w900,
                  fontSize: 10,
                ),
              ),
              Row(
                children: [
                  const Text(
                    '-----------------------------------',
                    style: TextStyle(
                      // fontWeight: FontWeight.w900,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    '${widget.price}₹',
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Time ",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Row(
                children: [
                  const Text(
                    '  ---------------------------------',
                    style: TextStyle(
                      // fontWeight: FontWeight.w900,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${widget.time} ${widget.hourOrMin}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'See All Features',
            style: TextStyle(
              color: widget.buttonGradient1,
              fontWeight: FontWeight.w900,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
