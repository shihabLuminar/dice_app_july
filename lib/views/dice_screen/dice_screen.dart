import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  List dices = [
    "assets/images/d1.png",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
  ];

  int? randonNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            randonNumber = Random().nextInt(6);
            print(randonNumber);
            setState(() {});
          },
          child: Image.asset(
              height: 200,
              width: 200,
              randonNumber == null
                  ? "assets/images/button.png"
                  : dices[randonNumber!]),
        ),
      ),
    );
  }
}
