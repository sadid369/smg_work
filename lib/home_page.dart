import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smg_work/gold.dart';
import 'package:smg_work/platinum.dart';
import 'package:smg_work/plus.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(child: Platinum()),
            Expanded(
              child: Gold(),
            ),
            Expanded(
              child: Plus(),
            ),
          ],
        ),
      ),
    );
  }
}
