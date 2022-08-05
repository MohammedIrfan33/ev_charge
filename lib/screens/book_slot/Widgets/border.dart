import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';


OutlineInputBorder border() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: kborderGrayShadedColor,
        width: .8,
      ));
}