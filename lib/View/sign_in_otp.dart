import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class SignInOtp extends StatelessWidget {
  const SignInOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35  ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: 'main',
                  child: Image.asset(
                    'assets/images/otp.png',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text(
                  'Verify Phone',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700],
                      fontSize: 24),
                ),
                SizedBox(height: 5),
                Text(
                  'Code is sent  to  +91976543212',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700],
                      fontSize: 15),
                ),
                OTPTextField(
                  length: 5,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 40,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
                SizedBox(height: 30),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 130),
                  onPressed: () {
                    Navigator.pushNamed(context, '/LocationScreen');
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
