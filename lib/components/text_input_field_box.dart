import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';


class TextInputFieldBox extends StatelessWidget {
  const TextInputFieldBox({
    required this.hintText,
    required this.icon,
    required this.keyboardType,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: kHintStyle,
        prefixIconConstraints: const BoxConstraints(),
        prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconTheme(
              data: const IconThemeData(
                color: kSecondaryColor,
              ),
              child: Icon(icon,size: 20,),
            )
        ),
        enabledBorder: border(color: kborderGrayShadedColor),
        focusedBorder: border(color: kSecondaryColor),
        contentPadding: const EdgeInsets.all(0),
      ),
    );
  }
}

OutlineInputBorder border({required Color color}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: color,
        width: .8,
      ));
}