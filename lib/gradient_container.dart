import 'package:flutter/material.dart';
import 'dart:math';

class GradientContainer extends StatelessWidget {
  const GradientContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color.fromARGB(255, 234, 15, 15), Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: const diceImage(),
    );
  }
}

class diceImage extends StatefulWidget {
  const diceImage({super.key});

  @override
  State<diceImage> createState() => _diceImageState();
}

class _diceImageState extends State<diceImage> {
  var noOfImage = 4;
  var randomObj = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Image.asset(
          'assets/images/dice-$noOfImage.png',
          width: 200,
        ),

        /* For Rolling Dice Randomly */
        /* Uncomment */

        // TextButton(
        //   onPressed: () {
        //     setState(() {
        //       noOfImage = randomObj.nextInt(6) + 1;
        //     });
        //     print('yooo');
        //   },
        //   style: TextButton.styleFrom(foregroundColor: Colors.white),
        //   child: Text('Roll Dice', style: TextStyle(fontSize: 20),),
        // ),

        /* For moving between images in order */
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  if (noOfImage == 1) {
                  } else {
                    noOfImage--;
                  }
                });
              },
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              child: const Text(
                'Previous',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(width: 16),
            TextButton(
              onPressed: () {
                setState(() {
                  if (noOfImage == 6) {
                  } else {
                    noOfImage++;
                  }
                });
              },
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
