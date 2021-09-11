import 'package:flutter/material.dart';
import 'package:via_rider/constants/drawer.dart';

import 'History.dart';
import 'dataHome.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    DataHome(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigaton(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        // leading: Image.asset('assets/icons/menu.png'),
        centerTitle: true,
        title: Text(
          'VIA. Riders',
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        backgroundColor: Color(0xFF344C59),
        onPressed: () {
          Navigator.pushNamed(context, '/QrScanScreen');
        },
        child: Icon(Icons.qr_code_scanner_outlined),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history_rounded,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
