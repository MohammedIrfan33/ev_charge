import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    required this.textFieldChild,
    Key? key,
  }) : super(key: key);

  final Widget textFieldChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(top: 5.0, bottom: 12.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: const Offset(0, 2))
            ]),
        child: textFieldChild);
  }
}