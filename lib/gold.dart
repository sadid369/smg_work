import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Gold extends StatelessWidget {
  const Gold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 200,
          width: 280,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFEE48F),
                Color(0xffffffff),
              ],
              begin: Alignment.topCenter,
              end: Alignment.center,
            ),
            border: Border.all(
              color: const Color(
                0xffAE6C76,
              ),
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
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/logo.svg',
                          width: 30,
                          height: 30,
                          color: Color(0xffEEC247),
                        ),
                        Text(
                          'tinder',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffE7AF12),
                                Color(0xffF3D273),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                          child: const Text(
                            'GOLD',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(23),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffE7AF1A),
                            Color(0xffF7D46E),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // foregroundColor: Colors.transpasrent.withOpacity(0.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Upgrade',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What's Included",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Plus',
                        style: TextStyle(
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
                  Text(
                    "See Who Likes You",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '------',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.done,
                        size: 18,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Picks",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '------',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.done,
                        size: 18,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'See All Features',
                style: TextStyle(
                  color: Color(0xff9C8744),
                  fontWeight: FontWeight.w900,
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
