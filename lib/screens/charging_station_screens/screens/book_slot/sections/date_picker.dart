
import 'package:ev_charge/screens/charging_station_screens/screens/book_slot/Widgets/border.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class SelectDate extends StatefulWidget {
  const SelectDate({Key? key}) : super(key: key);

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: kTextFieldHeight,
      child: TextFormField(
        controller: dateInput,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Select Date',
          hintStyle: kHintStyle,
          prefixIconConstraints: const BoxConstraints(),
          suffixIcon:IconTheme(
            data: const IconThemeData(
             color: kSecondaryColor
            ),
            child:   const Padding(
              padding: EdgeInsets.all(8.0),
          child: Icon(Icons.calendar_month),
        ),
          ),
          enabledBorder: greyBorder(),
          focusedBorder: greyBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        ),
        readOnly: true,
//set it true, so that user will not able to edit text
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              //- not to allow to choose before today.
              lastDate: DateTime(2100));

          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(
                pickedDate); //formatted date output using intl package =>  2021-03-16
            setState(() {
              dateInput.text =
                  formattedDate; //set output date to TextField value.
            });
          } else {}
        },
      ),
    );
  }
}
