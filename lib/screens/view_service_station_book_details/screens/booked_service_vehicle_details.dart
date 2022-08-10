import 'package:ev_charge/components/booked_vehicle_image.dart';
import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/details_column_text.dart';
import 'package:ev_charge/components/details_row_text.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class BookedServiceVehicleDetailsScreen extends StatelessWidget {
  const BookedServiceVehicleDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(50),child: CustomAppBar(appBarLabel: 'BookedService',),),
      body: SafeArea(
        child: Container(
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
              verticalSpace(20),
              const BookedVehicleImage(image: 'assets/images/car_circle.png',),
              verticalSpace(20),
              const Text(
                'Vehicle name',
                style: kSemiBoldStyle,
              ),
              verticalSpace(20),
              const DetailsRowText(
                text: 'user name',
                value: 'value',
              ),
              const DetailsRowText(
                text: 'vehicle number',
                value: 'value',
              ),
              const DetailsRowText(
                text: 'service',
                value: 'pick and drop',
              ),
              verticalSpace(15),
              const RowIconText(
                icon: 'assets/images/location.svg',
                text: 'adresssss sssssss',
                iconHeight: 18,
              ),
              const Spacer(),
              Buttons(onPress: () {
              }, label: 'Start Service'),
            ],
          ),),
      ),
    );
  }
}
