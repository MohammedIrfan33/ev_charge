import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';


class DetailsRowText extends StatelessWidget {
  const DetailsRowText({
    required this.text,
    required this.value,
    Key? key,
  }) : super(key: key);

  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text ,style: kSmallBoldTextStyle),
          Text(value,style: kSmallGreyTextStyle,),
        ],
      ),
    );
  }
}