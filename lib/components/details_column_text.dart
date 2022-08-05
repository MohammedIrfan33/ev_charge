import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class DetailsColumnText extends StatelessWidget {
  const DetailsColumnText({
    required this.text,
    required this.value,
    Key? key,
  }) : super(key: key);

  final String text;
  final String  value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text ,style: kSmallBoldTextStyle),
        Text(value,style: kSmallGreyTextStyle,),
      ],
    );
  }
}

