import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 25,
      thickness: 1,
      color: Colors.grey.shade400,
    );
  }
}

