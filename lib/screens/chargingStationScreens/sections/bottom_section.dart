import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/screens/book_slot/book_slot_screen.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: Buttons(
              onPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const BookSlot()));
              },
              label: 'Book Slot',
            ),
          ),
          horizontalSpace(20.0),
          Expanded(
            child: GreenOutlinedButton(onPress:(){} ,label: 'Save Slot',),
          )
        ],
      ),
    );
  }
}
