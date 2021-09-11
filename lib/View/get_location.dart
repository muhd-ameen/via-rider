
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: 'main',
                  child: Image.asset(
                    'assets/images/location.png',
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
                  'Enable Location',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700],
                      fontSize: 24),
                ),
                SizedBox(height: 5),
                Text(
                  ' VIA Riders needs your location to accurate Your Position',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[500],
                      fontSize: 15),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 90),
                  onPressed: () {
                    Navigator.pushNamed(context, '/HomeScreen');
                  },
                  color: Color(0xFF0065FF),
                  child: Text(
                    'Enable Location',
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
