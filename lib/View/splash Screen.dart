import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Stack(
          children: [
            // Positioned.fill(child: Image.asset('assets/images/unsplash.png',fit: BoxFit.fill,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(),
                ),
                SvgPicture.asset('assets/images/splash.svg', height: 200),
                Expanded(
                  flex: 4,
                  child: Container(),
                ),
                SvgPicture.asset('assets/images/logo.svg', height: 25),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
              ],
            )
          ],
        ));
  }

  startTime() async {
    var _duration = new Duration(seconds: 6);
    return new Timer(_duration, () async {
      Navigator.of(context).pushReplacementNamed('/welcome');
    });
  }
}
