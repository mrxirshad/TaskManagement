import 'dart:async';

// import 'package:app/bottom.dart';
import 'package:flutter/material.dart';

import '../bottom.dart';
import '../size_config.dart';
import 'Home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void finish() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => bottom()));
  }

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => bottom())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: 12 * SizeConfig.heightMultiplier,
            //       bottom: 10 * SizeConfig.heightMultiplier),
              Text(
                'Time is Precious',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/icons/tasks.png',scale:2,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}