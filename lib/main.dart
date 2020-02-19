import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/explore.dart';
import './screens/inbox.dart';
import './screens/trips.dart';
import './screens/saved.dart';
import './screens/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            Brightness.dark //or set color with: Color(0xFF0000FF)
        ));
//    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return MaterialApp(
      title: 'AirBnb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff484848)),
          title: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color(0xff484848)),
          body1: TextStyle(
              fontSize: 17,
              color: Color(0xff484848)),
        ),
      ),
      home: AirBnb(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AirBnb extends StatefulWidget {
  @override
  _AirBnbState createState() => _AirBnbState();
}

class _AirBnbState extends State<AirBnb> {
  var _selectedIndex = 0;
  var _tabList = [Explore(), Saved(), Trips(), Inbox(), Profile()];

  void _changeTab(i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _tabList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'EXPLORE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(
              'SAVED',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_subway),
            title: Text(
              'TRIPS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text(
              'INBOX',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text(
              'PROFILE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        onTap: (i) => _changeTab(i),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 12),
      ),
    );
  }
}
