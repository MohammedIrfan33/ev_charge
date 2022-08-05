import 'package:ev_charge/screens/book_slot/Widgets/drop_down_container.dart';
import 'package:ev_charge/screens/book_slot/book_slot_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class VehicleFuelDropDown extends StatefulWidget {
  const VehicleFuelDropDown({Key? key}) : super(key: key);

  @override
  State<VehicleFuelDropDown> createState() => _VehicleFuelDropDownState();
}

class _VehicleFuelDropDownState extends State<VehicleFuelDropDown> {

  List<String> items = ['AC', 'DC','asdfg'];

  String selectedItems = 'AC';

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
