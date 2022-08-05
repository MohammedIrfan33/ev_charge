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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          textAlign: TextAlign.start,
          style: const TextStyle(color: Colors.black87),
        ),
        Text(
          value,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
