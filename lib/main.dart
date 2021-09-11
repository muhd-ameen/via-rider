import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'View/get_location.dart';
import 'View/home.dart';
import 'View/qr_scan.dart';
import 'View/settings.dart';
import 'View/sign-in.dart';
import 'View/sign_in_otp.dart';
import 'View/splash Screen.dart';
import 'View/welcome.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VIA RIDER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splashScreen',
      routes: <String, WidgetBuilder>{
        '/splashScreen': (BuildContext ctx) => SplashScreen(),
        '/welcome': (BuildContext ctx) => Welcome(),
        '/SignIn': (BuildContext ctx) => SignIn(),
        '/SignInOtp': (BuildContext ctx) => SignInOtp(),
        '/HomeScreen': (BuildContext ctx) => HomeScreen(),
        '/LocationScreen': (BuildContext ctx) => LocationScreen(),
        '/QrScanScreen': (BuildContext ctx) => QrScanScreen(),
        '/Settings': (BuildContext ctx) => Settings(),
      },
    );
  }
}
