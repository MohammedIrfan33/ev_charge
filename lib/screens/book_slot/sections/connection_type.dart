import 'package:ev_charge/screens/book_slot/Widgets/drop_down_container.dart';
import 'package:ev_charge/screens/book_slot/book_slot_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class ConnectionTypeDropDown extends StatefulWidget {
  const ConnectionTypeDropDown({Key? key}) : super(key: key);

  @override
  State<ConnectionTypeDropDown> createState() => _ConnectionTypeDropDownState();
}

class _ConnectionTypeDropDownState extends State<ConnectionTypeDropDown> {

  List<String> items = ['Type1', 'Type2','typ3','type4'];

  String selectedItems = 'Type1';

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
