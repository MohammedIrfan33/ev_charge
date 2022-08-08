import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class ColumnGreyText extends StatelessWidget {
  const ColumnGreyText({
    required this.text,
    required this.value,
    Key? key,
  }) : super(key: key);
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: kHintStyle,
        ),
        Text(
          value,
          style: const TextStyle(
              fontSize: 12.0,
              color: Colors.black,
              fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}

