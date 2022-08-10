import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        verticalSpace(5.0),
        Text(
          value,
          style: const TextStyle(
              fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
