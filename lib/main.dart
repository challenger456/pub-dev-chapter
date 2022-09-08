import 'package:flutter/material.dart';
import 'package:pub_dev_chapter/badges.dart';
import 'home.dart';
import 'pin_code.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        Badges.id: (context) => Badges(),
        pinCode.id: (context) => pinCode()

      },
    );




  }
}
