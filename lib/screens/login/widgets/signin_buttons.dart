import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SiginInWithButtons extends StatelessWidget {
  const SiginInWithButtons({
    required this.icon,
    required this.label,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  final String label;
  final String icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPress(),
      icon: SvgPicture.asset(
        icon,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          label,
          style: kSmallTextStyle,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size.fromHeight(40.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.00),
        ),
        shadowColor: kborderGrayShadedColor,
        elevation: .15,
        splashFactory: NoSplash.splashFactory,
      ),
    );
  }
}