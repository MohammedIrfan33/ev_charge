import 'package:ev_charge/screens/service_station_screen/screens/book_service_home/book_service_home.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';


class BookServiceNavigatorScreen extends StatefulWidget {
  const BookServiceNavigatorScreen({Key? key}) : super(key: key);

  @override
  State<BookServiceNavigatorScreen> createState() => _BookServiceNavigatorScreenState();
}

class _BookServiceNavigatorScreenState extends State<BookServiceNavigatorScreen> {


  //navigation screens list
  List screens = [
    const ServiceHomeScreen()
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
