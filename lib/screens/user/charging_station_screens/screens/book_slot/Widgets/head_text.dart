import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  const HeadText({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return const Text('Select Your Vehicle Type', style: TextStyle(
        color: Colors.black87,
        fontSize: 14.0,
        fontWeight: FontWeight.w900
    ),);
  }
}