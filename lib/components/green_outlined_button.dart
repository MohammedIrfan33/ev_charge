import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class GreenOutlinedButton extends StatelessWidget {
  const GreenOutlinedButton({
    required this.label,
    required this.onPress,
    this.height,
    Key? key,
  }) : super(key: key);

  final String label;
  final Function onPress;
  final double ?  height;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onPress();
      },
      style: OutlinedButton.styleFrom(
          primary: kSecondaryColor,
          minimumSize: Size.fromHeight(height??kTextFieldHeight),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          side: const BorderSide(
            color: kSecondaryColor,
          )),
      child: Text(
       label,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
      ),
    );
  }
}
