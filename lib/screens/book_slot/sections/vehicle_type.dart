import 'package:ev_charge/screens/book_slot/Widgets/drop_down_container.dart';
import 'package:ev_charge/screens/book_slot/book_slot_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class VehicleTypeDropDown extends StatefulWidget {
  const VehicleTypeDropDown({Key? key}) : super(key: key);

  @override
  State<VehicleTypeDropDown> createState() => _VehicleTypeDropDownState();
}

class _VehicleTypeDropDownState extends State<VehicleTypeDropDown> {

  List<String> items = ['item1', 'item2', 'item3'];

  String selectedItems = 'item1';

  @override
  Widget build(BuildContext context) {
    return DropDownContainer(
      dropDownChild: DropdownButton(
        isExpanded: true,
        underline: const SizedBox(),
        value: selectedItems,
        items: items
            .map((item) => DropdownMenuItem(
            value: item,
            child: Text(
              item,
              style: kHintStyle,
            )))
            .toList(),
        onChanged: (item) {
          setState(() {
            selectedItems = item.toString();
          });
        },
      ),
    );
  }
}
