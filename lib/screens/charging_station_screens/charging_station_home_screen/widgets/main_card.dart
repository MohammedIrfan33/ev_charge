import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    required this.cardChild,
    required this.onClick,
    Key? key
  }) : super(key: key);

  final Widget cardChild;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 230,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: cardChild
    );
  }
}
