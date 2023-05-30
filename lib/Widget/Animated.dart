import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Animated extends StatelessWidget {
  const Animated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         /* AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Tanjid Hossain Amran',
                  textStyle: TextStyle(fontSize: 30),
                  speed: Duration(microseconds: 400),)

            ],
            totalRepeatCount: 4,
            pause: Duration(microseconds: 100),
          ),*/
          AnimatedTextKit(
            animatedTexts: [RotateAnimatedText('Hello'),
              RotateAnimatedText('Handsome')
            ],
          ),
          AnimatedTextKit(animatedTexts: [
            WavyAnimatedText(
              'HELLO WORLD',
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
           /* WavyAnimatedText(
              'HELLO WORLD',
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),*/
          ])

        ],
      ),
    );
  }
}
