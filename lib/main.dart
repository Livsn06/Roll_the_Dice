import 'package:dice_project/screens/dice_Interface.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dice_App());
}

class Dice_App extends StatelessWidget {
  const Dice_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dice_roll(),
    );
  }
}
