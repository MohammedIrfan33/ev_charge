import 'package:ev_charge/components/details_row_text.dart';
import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/screens/user/service_station_screens/screens/Book_service_details_screens/book_service_details_screen.dart';
import 'package:ev_charge/screens/view_service_station_book_details/screens/booked_service_vehicle_details.dart';
import 'package:ev_charge/screens/view_service_station_book_details/screens/pending_service_details_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class ServiceStatusBarContainer extends StatelessWidget {
  const ServiceStatusBarContainer({
    Key? key,
    this.isBooking = false,
    this.isCompleted = false,
    this.isPending = false,
  }) : super(key: key);

  final bool isBooking;
  final bool isPending;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //top section
        SizedBox(
          height: 100,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 0.0,
                left: 0.0,
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              //image postion
              Positioned(
                right: 50,
                top: 0,
                child: SizedBox(
                  height: 100,
                  width: 130,
                  child: Image.asset(
                    'assets/images/bike.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              //image name postion
              const Positioned(
                top: 10.0,
                left: 10.0,
                child: SizedBox(
                  width: 100.0,
                  child: Text(
                    'name',
                    style: kSubHeadingSemiBoldStyle,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.fade,
                    maxLines: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsRowText(text: 'Booking  number', value: '234567'),
              DetailsRowText(text: 'vehicle number', value: 'kl 123456'),
              DetailsRowText(text: 'service', value: 'pick and drop'),

              isCompleted ? Spacer(): const SizedBox(),

              //percentage time remaining column
              isBooking || isCompleted || isPending
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Date booked'),
                  isBooking || isPending
                      ? GreenOutlinedButton(
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => isBooking ?
                              const BookedServiceVehicleDetailsScreen()  : const PendingServiceVehicleDetailsScreen()));
                    },
                    label: 'View Details',
                    height: 35,
                  )
                      : const SizedBox(),
                  isCompleted
                      ?  const Text('status: completed', style: kSmallGreenBoldTextStyle)

                      : const SizedBox(),
                ],
              )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
