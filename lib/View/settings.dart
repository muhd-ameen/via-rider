import 'package:flutter/material.dart';
import 'package:via_rider/constants/drawer.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerNavigaton(),
      appBar: AppBar(
        title: Text('Settings',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Illias Ibrahim',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[700],
                    fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Colors.grey[200]),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Hub : Ernakulam ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.teal[700],
                            fontSize: 18),
                      ),
                      Text(
                        'ID : 454812',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700],
                            fontSize: 15),
                      ),
                      Text(
                        'Contact no : 8757458965 ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700],
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color(0xFFF5F5F5),
                ),
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(width: 10),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700],
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: ()=>Navigator.pushNamed(context, '/splashScreen'),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Color(0xFFF5F5F5),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text(
                        'Sign Out',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700],
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
