import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smg_work/game_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 280,
          child: ListView(
            // reverse: true,
            // shrinkWrap: true,
            children: const [
              // BASE LEVEL
              GameCard(
                bgGradient1: Color(0xffFACBEA),
                bgGradient2: Color(0xffffffff),
                buttonGradient1: Color(0xffB0578D),
                buttonGradient2: Color(0xffD988B9),
                price: 100,
                hourOrMin: 'min',
                time: 30,
                tiltBoxText: 'Base Level',
              ),
              // Silver LEVEL
              GameCard(
                bgGradient1: Color(0xffe3e3e3),
                bgGradient2: Color(0xffffffff),
                buttonGradient1: Color(0xffa8a9ad),
                buttonGradient2: Color(0xffcbcccd),
                price: 200,
                hourOrMin: 'Hr',
                time: 1,
                tiltBoxText: 'Silver Level',
              ),
              //Gold Level
              GameCard(
                bgGradient1: Color(0xffFEE48F),
                bgGradient2: Color(0xffffffff),
                buttonGradient1: Color(0xffE7AF12),
                buttonGradient2: Color(0xffF3D273),
                price: 500,
                hourOrMin: 'Hr',
                time: 1.3,
                tiltBoxText: 'Gold Level',
              ),
              //Master Level
              Expanded(
                child: GameCard(
                  bgGradient1: Color(0xffE3FEF7),
                  bgGradient2: Color(0xffffffff),
                  buttonGradient1: Color(0xff003C43),
                  buttonGradient2: Color(0xff77B0AA),
                  price: 1000,
                  hourOrMin: 'Hr',
                  time: 2,
                  tiltBoxText: 'Master Level',
                ),
              ),
              GameCard(
                bgGradient1: Color(0xff9B3922),
                bgGradient2: Color(0xffffffff),
                buttonGradient1: Color(0xff481E14),
                buttonGradient2: Color(0xffF2613F),
                price: 2000,
                hourOrMin: 'Hr',
                time: 3,
                tiltBoxText: 'G Master Level',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
