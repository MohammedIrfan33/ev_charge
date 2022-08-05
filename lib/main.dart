import 'package:ev_charge/screens/on_charging_screen/my_booking_screen.dart';
import 'package:ev_charge/screens/splash_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ev Charger',
      theme: ThemeData(
        fontFamily: 'Gantry',
      ),
     routes: {
        '/':(context) => Splash(),

     },
      initialRoute: '/',
      
    );
  }
}


