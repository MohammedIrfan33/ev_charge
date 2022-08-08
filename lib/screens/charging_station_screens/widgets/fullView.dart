import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/components/text_column.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class FullViewTab extends StatefulWidget {
  const FullViewTab({Key? key}) : super(key: key);

  @override
  State<FullViewTab> createState() => _FullViewTabState();
}

class _FullViewTabState extends State<FullViewTab> {
  int  selectedSlot =0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ADDRESS',
            style: kSmallGreyTextStyle,
          ),
          const RowIconText(
            icon: kLocation,
            text: 'adresss asdfghjkl',
            iconHeight: 15,
            iconWidth: 15,
          ),
          verticalSpace(30.0),
          const Text(
            'PHONE',
            style: kSmallGreyTextStyle,
          ),
          const RowIconText(icon: kBlackPhone, text: '12457890'),
          verticalSpace(30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextColumn(text: 'Connection', value: '07'),
              TextColumn(text: 'Speed', value: '10kwh'),
              TextColumn(text: 'Price', value: '24/kw'),
            ],
          ),
          verticalSpace(20),
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.start,
              runSpacing: 0,
              spacing: 10,
              children: List.generate(
                  slots.length,
                  (index) => ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal:0.0,vertical: 10.0),
                    labelStyle: const TextStyle(
                      fontSize: 12.0,
                    ),
                    side: BorderSide(
                      color: selectedSlot == index ? kSecondaryColor : kborderGrayShadedColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                        backgroundColor: selectedSlot == index
                            ? kPrimaryColor
                            : Colors.transparent,
                        label: Text(slots[index]),
                        onPressed: () {
                          setState(() {
                            selectedSlot = index;
                          });
                        },
                      )),
            )
          ),
        ],
      ),
    );
  }
}



List<String> slots = [
  '7:00 AM',
      '8:00 AM',
      '9:00 AM',
      '6:00 pM',
      '10:00 pM',
      '10:30 pM',
];