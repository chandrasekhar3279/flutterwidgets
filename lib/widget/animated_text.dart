import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTexWidget extends StatelessWidget {
  const AnimatedTexWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Text Widget'),),
      body: Column(
        children: [
          AnimatedTextKit(animatedTexts: [
            TypewriterAnimatedText('Chandrasekhar',textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            speed: Duration(milliseconds: 100),
            ),
          ],
          totalRepeatCount:4,
          pause: Duration(milliseconds: 200),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,),

           AnimatedTextKit(animatedTexts: [
            RotateAnimatedText('James',textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
           
            ),
          ],
          totalRepeatCount:4,
          pause: Duration(milliseconds: 200),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,)
        ],
      ),
    ); 
  }
}
