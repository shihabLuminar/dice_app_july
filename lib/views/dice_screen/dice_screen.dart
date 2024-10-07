import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
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
                  : "assets/images/d$randonNumber.png"),
        ),
      ),
    );
  }
}
