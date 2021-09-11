import 'package:flutter/material.dart';
import 'package:via_rider/constants/const.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.grey[700],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: 'main',
                  child: Image.asset(
                    'assets/images/signIn.png',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.phone ,
                  textAlign: TextAlign.left,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Phone Number',
                    prefixIcon: Icon(Icons.phone_android_outlined),
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 15),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 130),
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignInOtp');
                  },
                  color: Color(0xFF0065FF),
                  child: Text(
                    'Send Otp',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
