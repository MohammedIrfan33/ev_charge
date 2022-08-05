import 'package:flutter/material.dart';
import '../utilities/constans.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    required this.onPress,
    required this.label,
    Key? key,
  }) : super(key: key);

  final String label;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
        onPress
      ,
      style: ElevatedButton.styleFrom(
          primary: kSecondaryColor,
          minimumSize: const Size.fromHeight(kTextFieldHeight),
          elevation: 0,
          splashFactory: NoSplash.splashFactory,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      child: Text(
        label,
        style: kButtonTextStyle,
      ),
    );
  }
}