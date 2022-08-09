import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/screens/charging_station_screens/screens/payment_screen/Widget/animated_popup.dart';
import 'package:ev_charge/screens/charging_station_screens/screens/payment_screen/Widget/text_field_container.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedSlot = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          appBarLabel: 'payment',
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  slots.length,
                  (index) => ActionChip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 2.0),
                        elevation: .2,
                        pressElevation: 0,
                        labelStyle: const TextStyle(
                          fontSize: 12.0,
                        ),
                        side: BorderSide(
                          width: 2,
                          color: selectedSlot == index
                              ? kSecondaryColor
                              : Colors.transparent,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Colors.white,
                        shadowColor: kborderGrayShadedColor,
                        label: SvgPicture.asset(slots[index]),
                        onPressed: () {
                          setState(() {
                            selectedSlot = index;
                          });
                        },
                      )),
            ),
            verticalSpace(20),
            const Text(
              'Card Number',
              style: kExtraSmallBoldText,
            ),
            const TextFieldContainer(
              textFieldChild: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'card number',
                    hintStyle: kHintStyle),
              ),
            ),
            const Text(
              'Card Holder Name',
              style: kExtraSmallBoldText,
            ),
            const TextFieldContainer(
              textFieldChild: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'card holder name',
                    hintStyle: kHintStyle),
              ),
            ),
            const Text(
              'Expire Data',
              style: kExtraSmallBoldText,
            ),
            Row(
              children: [
                const Expanded(
                  child: TextFieldContainer(
                    textFieldChild: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Month',
                          hintStyle: kHintStyle),
                    ),
                  ),
                ),
                horizontalSpace(20),
                const Expanded(
                  child: TextFieldContainer(
                    textFieldChild: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Year',
                        hintStyle: kHintStyle,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Text(
              'CVV Number',
              style: kExtraSmallBoldText,
            ),
            const TextFieldContainer(
              textFieldChild: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'card number',
                    hintStyle: kHintStyle),
              ),
            ),
            const Text(
              'the last three numbrs on the back of your card',
              style: kHintStyle,
            ),
            verticalSpace(10),
            Row(
              children: const [
                Checkbox(
                  value: false,
                  onChanged: null,
                  visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                ),
                Text(
                  'Save this information for future payment',
                  style: kExtraSmallText,
                ),
              ],
            ),
            const Spacer(),
            Buttons(onPress: () {
              showAnimatedDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return  const AnimatedPopup();
                },
                animationType: DialogTransitionType.scale,
                curve: Curves.ease,
                duration: const Duration(seconds: 1),
              );


            }, label: 'Confirm and Pay')
          ],
        ),
      ),
    ));
  }
}


List<String> slots = [
  'assets/images/visa.svg',
  'assets/images/paypal.svg',
  'assets/images/paypoint.svg',
  'assets/images/mastercard.svg',
];
