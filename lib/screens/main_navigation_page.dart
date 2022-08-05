import 'package:ev_charge/main.dart';
import 'package:ev_charge/screens/home/home_Screens.dart';
import 'package:ev_charge/screens/home/widgets/my_booking.dart';
import 'package:ev_charge/screens/login/login_screen.dart';
import 'package:ev_charge/screens/my_booking_details_screen/my_booking_details_screen.dart';
import 'package:ev_charge/screens/signup/signup_screen.dart';
import 'package:ev_charge/screens/user/user_profile_screen/user_profile_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

import 'location_screen/location_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  //navigation screens list
  List screens = [
    const HomeScreen(),
    const LocationScreen(),
    const MyBookingDetailsScreen(),
    const ProfileScreen()
  ];

  int selectedIndex = 0;
  bool isSelectedIcon = false;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            activeIcon: Icon(Icons.bookmark),
            label: 'mybooking',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
            ),
            activeIcon: Icon(Icons.person),
            label: 'signin',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: kSecondaryColor,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: onTap,
      ),
    );
  }
}
