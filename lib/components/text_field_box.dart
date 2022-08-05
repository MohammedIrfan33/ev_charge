import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
     this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    this.isPassword = false,
    this.isSuffixIcon = false,
    this.isPrefixIcon = true,
    Key? key,
  }) : super(key: key);

  final String? prefixIcon;
  final String? suffixIcon;
  final bool isSuffixIcon;
  final String hintText;
  final bool isPassword;
  final bool isPrefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: kTextFieldHeight,
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: kHintStyle,
          prefixIconConstraints: const BoxConstraints(),
          prefixIcon:isPrefixIcon ? Padding(
            padding: const EdgeInsets.only(
                left: 15.0,
              top: 8.0,
              bottom: 8.0,
              right: 5.0
            ),
            child: SvgPicture.asset(
              prefixIcon??'',
              height: 20.0,
              width: 20.0,
            ),
          ): const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(),
          ),
          suffixIcon: IconButton(
            icon: isSuffixIcon
                ? SvgPicture.asset(
              suffixIcon!,
              height: 20.0,
              width: 20.0,
            )
                : const SizedBox(),
            onPressed: () {
              !isPassword;
            },
          ),
          enabledBorder: border(color: kborderGrayShadedColor),
          focusedBorder: border(color: kSecondaryColor),
          contentPadding: const EdgeInsets.all(0),
        ),
      ),
    );
  }


  OutlineInputBorder border({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: color,
          width: .8,
        ));
  }
}