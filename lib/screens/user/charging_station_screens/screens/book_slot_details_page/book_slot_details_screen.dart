import 'package:ev_charge/components/booked_vehicle_image.dart';
import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/details_column_text.dart';
import 'package:ev_charge/components/details_row_text.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/confirm_screen/confirm_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class BookSlotDetailsScreen extends StatelessWidget {
  const BookSlotDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(
            appBarLabel: 'Book Slot',
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BookedVehicleImage(image: 'assets/images/car_circle.png',),
              const Text(
                'Honta e',
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
              const Spacer(),
              Buttons(
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmScreen()));
                  },
                  label: 'Next')
            ],
          ),
        ),
      ),
    );
  }
}


