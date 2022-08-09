import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class RowHeading extends StatelessWidget {
  const RowHeading({
    required this.heading,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  final String heading;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: kSubHeadingStyle,
          ),
          InkWell(
            onTap: () {
              onClick();
            },
            child: const Text(
              'See All',
              style: TextStyle(
                color: kborderGrayShadedColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}

