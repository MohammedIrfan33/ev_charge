import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot/Widgets/border.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class VehicleModel extends StatelessWidget {
  const VehicleModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: kTextFieldHeight,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'select model',
          hintStyle: kHintStyle,
          prefixIconConstraints: const BoxConstraints(),
          suffixIcon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.black,),
          ),
          enabledBorder: greyBorder(),
          focusedBorder: greyBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}


