import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class DropDownContainer extends StatelessWidget {
  const DropDownContainer({required this.dropDownChild, Key? key})
      : super(key: key);

  final Widget dropDownChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 15),
        height: kTextFieldHeight,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                spreadRadius: .2,
                blurRadius: .4,
                offset: const Offset(0, .4))
          ],
          color: Colors.white,
          border: Border.all(
            color: kborderGrayShadedColor,
            width: .8,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: dropDownChild);
  }
}

