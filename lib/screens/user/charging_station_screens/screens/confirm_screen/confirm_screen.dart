import 'package:ev_charge/components/booked_vehicle_image.dart';
import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/components/details_column_text.dart';
import 'package:ev_charge/components/details_row_text.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/payment_screen/payment_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar( appBarLabel: 'Book Slot',),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Booning No:123456789',
                  textAlign: TextAlign.left,
                ),
                const BookedVehicleImage(image: 'assets/images/car_circle.png',),
                const Text(
                  'Vehicle name',
                  style: kSemiBoldStyle,
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    DetailsColumnText(
                      text: 'text',
                      value: 'value',
                    ),
                    DetailsColumnText(
                      text: 'text',
                      value: 'value',
                    ),
                    DetailsColumnText(
                      text: 'text',
                      value: 'value',
                    ),
                  ],
                ),
                verticalSpace(10),
                const RowIconText(
                  icon: 'assets/images/location.svg',
                  text: 'adresssss sssssss',
                  iconHeight: 18,
                ),
                verticalSpace(15),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'TotalPayment:1567',
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
                Buttons(onPress: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const PaymentScreen()));
                }, label: 'Confirm')
              ],
            )),
      ),
    );
  }
}
