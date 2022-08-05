import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *.8,
      height: kTextFieldHeight,
      child: TextField(
        decoration: InputDecoration(
          prefixIconConstraints: const BoxConstraints(),
          prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: kSearchIcon
          ),
          contentPadding:const  EdgeInsets.all(0),
          fillColor: Colors.white,
          filled: true,
          enabledBorder:  inputBorder,
          focusedBorder:  inputBorder,
          hintText: "Serach",
        ),
      ),
    );
  }
}

OutlineInputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide:const  BorderSide(
      color:kborderGrayShadedColor,
    )
);


