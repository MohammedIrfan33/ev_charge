import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon({
    required this.icon,
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  final String icon;
  final double  ? width;
  final double ? height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width,
      height: height,
    );
  }
}
