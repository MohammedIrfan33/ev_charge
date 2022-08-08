import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class TextColumnDivider extends StatelessWidget {
  const TextColumnDivider({Key? key, required this.text, required this.value})
      : super(key: key);

  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey.shade500,
            fontWeight: FontWeight.w500,

          ),
        ),
        verticalSpace(5.0),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
