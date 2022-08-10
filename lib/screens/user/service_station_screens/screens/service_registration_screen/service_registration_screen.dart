import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/drop_down_container.dart';
import 'package:ev_charge/components/text_input_field_box.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot/sections/date_picker.dart';
import 'package:ev_charge/screens/user/service_station_screens/screens/Book_service_details_screens/book_service_details_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';


class ServiceRegistrationForm extends StatefulWidget {
  const ServiceRegistrationForm({Key? key}) : super(key: key);

  @override
  State<ServiceRegistrationForm> createState() =>
      _ServiceRegistrationFormState();
}

class _ServiceRegistrationFormState extends State<ServiceRegistrationForm> {
  List<String> items = [
    'pick and Drop',
    'Road Side Assistant',
    'Water Service'
  ];
  String selectedItems = 'pick and Drop';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          appBarLabel: 'Book Service',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //vehicle name  input boc
            const Text('vehicle name', style: kSmallText14),
            const TextInputFieldBox(
              hintText: 'vehicle name',
              icon: Icons.drive_eta,
              keyboardType: TextInputType.text,
            ),
            verticalSpace(10),

            //vehicle model number
            const Text(
              'model number',
              style: kSmallTextStyle,
            ),
            const TextInputFieldBox(
              hintText: 'vehicle model',
              icon: Icons.confirmation_num_rounded,
              keyboardType: TextInputType.text,
            ),
            verticalSpace(10),

            //vehicle compliant
            const Text('compliant Title', style: kSmallText14),
            const TextInputFieldBox(
              hintText: 'compliant title',
              icon: Icons.car_repair_rounded,
              keyboardType: TextInputType.text,
            ),
            verticalSpace(10),
            //vehicle compliant Description
            const Text(
              'compliant Description',
              style: kSmallText14,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'descriptions',
                hintStyle: kHintStyle,
                prefixIconConstraints: const BoxConstraints(),
                enabledBorder: border(color: kborderGrayShadedColor),
                focusedBorder: border(color: kSecondaryColor),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
            verticalSpace(10),
            //select service drop down
            const Text(
              'select your service',
              style: kSmallText14,
            ),
            DropDownContainer(
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
            ),
            const SelectDate(),
            const Spacer(),
            Buttons(onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BookServiceDetailsScreen()));
            },
                label: 'Next'
            ),
          ],
        ),
      ),
    ));
  }
}
