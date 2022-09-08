import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'pin_code.dart';

class Badges extends StatefulWidget {
  static final String id = 'badges.dart';
  const Badges({Key? key}) : super(key: key);

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal,
      appBar: AppBar(
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Badge(
                badgeColor: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(0.3),
                badgeContent: Text('1'),
                animationType: BadgeAnimationType.slide,
                animationDuration: Duration(milliseconds: 800),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(
                child: Badge(
                  badgeContent: Text('1'),
                  animationType: BadgeAnimationType.slide,
                  animationDuration: Duration(milliseconds: 800),
                  child: Icon(Icons.settings),
                ),
            ),
            SizedBox(height: 10,),
            // AnimatedTextKit(
            //     animatedTexts: [
            //       FadeAnimatedText('Vipul Paliwal'),
            //       RotateAnimatedText('Hello World'),
            //     ],
            //   totalRepeatCount: 5,
            // ),


            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 20.0, height: 100.0),
                const Text(
                  'Be',
                  style: TextStyle(fontSize: 43.0),
                ),
                const SizedBox(width: 20.0, height: 100.0),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('AWESOME'),
                      RotateAnimatedText('OPTIMISTIC'),
                      RotateAnimatedText('DIFFERENT'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 20.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Hello World'),
                  WavyAnimatedText('Look at the waves'),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context, pinCode.id);
                },
                child: const Text('click me'))
          ],
        ),
      ),

    );


  }
}
