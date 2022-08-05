import 'package:ev_charge/components/svg_icon.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class RowIconText extends StatelessWidget {
  const RowIconText({
    required this.icon,
    required this.text,
    this.iconHeight = 20.0,
    this.iconWidth= 20.0,
    this.isGreyText = false,
    this.isLongText =false,
    Key? key,
  }) : super(key: key);

  final String icon;
  final String text;
  final bool isGreyText;
  final double iconHeight;
  final double  iconWidth;
  final bool isLongText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgIcon(
          icon: icon,
          height: iconHeight,
          width: iconWidth,
        ),
        isLongText ?
        Flexible(
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: isGreyText ? kSmallGreyTextStyle : kExtraSmallText,
            softWrap: false,
          ),
        )
            :Text(
          text,
          style: isGreyText ? kSmallGreyTextStyle : kExtraSmallText,
        ),


      ],
    );
  }
}
