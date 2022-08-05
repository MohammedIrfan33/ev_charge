import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({this.appBarLabel, Key? key}) : super(key: key);

  final String ? appBarLabel;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      titleSpacing: 0,
      title:  Text(
        appBarLabel??'appbar',
        style: kSemiBoldStyle,
      ),
    );
  }
}