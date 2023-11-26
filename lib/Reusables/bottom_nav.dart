import 'package:flutter/material.dart';
import 'package:hair_brace/Pages/create_password.dart';
import 'package:hair_brace/Pages/dashboard.dart';
import 'package:hair_brace/pages/booking_confirmation.dart';
import 'package:hair_brace/pages/hair_info.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  // int selectedIndex = 0;
  int _currentIndex = 0;

  final List<Widget> _pages = <Widget>[
    Dashboard(),
    HairInfo(),
    CreatePassword(),
    BookingConfirmation(),



  ];

  _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,

        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        backgroundColor: Colors.blue,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) => _changeTab(index),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: 'Discover',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'User',
            icon: Icon(Icons.person_2_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Appointments',
            icon: Icon(Icons.calendar_month_outlined),
          ),
      ],

      ),
    );
  }
}
