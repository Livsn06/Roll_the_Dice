import "dart:math";

import "package:flutter/material.dart";

class Dice_roll extends StatefulWidget {
  const Dice_roll({super.key});

  @override
  State<Dice_roll> createState() => _nameState();
}

class _nameState extends State<Dice_roll> {
  int value = 6;
  String text_Button = "Roll";
  List<String> dice_Value = [
    "http://www.clker.com/cliparts/X/w/P/Y/q/H/dice-1-md.png",
    "http://www.clker.com/cliparts/X/V/S/C/I/x/dice-2-md.png",
    "http://www.clker.com/cliparts/n/O/d/R/Y/c/dice-3-md.png",
    "http://www.clker.com/cliparts/D/j/Z/R/5/P/dice-4-md.png",
    "http://www.clker.com/cliparts/U/N/J/F/T/x/dice-5-md.png",
    "http://www.clker.com/cliparts/Y/O/V/X/F/D/dice-6-md.png",
    "http://www.clker.com/cliparts/4/4/2/B/D/R/3d-dice-md.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 0, 102, 212),
              Color.fromARGB(255, 30, 189, 233),
              Color.fromARGB(255, 8, 228, 173)
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Roll the Dice",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                letterSpacing: 5,
                wordSpacing: 3,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.network(
                dice_Value[value],
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  print("Re-rolled");
                  text_Button = "Roll again";
                  var rand = Random().nextInt(6);
                  value = rand;
                });
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(200, 50),
                  textStyle: const TextStyle(fontSize: 20),
                  padding: const EdgeInsets.all(10),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  )),
              child: Text(
                text_Button,
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
