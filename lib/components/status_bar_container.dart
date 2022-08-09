import 'package:ev_charge/components/details_row_text.dart';
import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/screens/charging_station_screens/view_slot_screen/view_slot_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StatusBarContainer extends StatelessWidget {
  const StatusBarContainer({
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailsRowText(text: 'Booking  number', value: '234567'),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  RowIconText(
                    icon: kgreenConnextionGreen,
                    text: 'location',
                    isGreyText: true,
                  ),
                  RowIconText(
                    icon: kPowerGreen,
                    text: 'kwh',
                    isGreyText: true,
                  ),
                  RowIconText(
                    icon: kfuelGreen,
                    text: 'charge',
                    isGreyText: true,
                  ),
                ],
              ),

              //percentage time remaining column
              isCompleted || isBooking
                  ? const SizedBox()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          ' Min Remaining',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: LinearPercentIndicator(
                              lineHeight: 5.0,
                              padding: const EdgeInsets.all(0),
                              percent: .8,
                              barRadius: const Radius.circular(16),
                              progressColor: kSecondaryColor,
                              backgroundColor: Colors.grey[300],
                            )),
                            horizontalSpace(10.0),
                            const Text(
                              '44%',
                              style: kExtraSmallTextGreen,
                            )
                          ],
                        ),
                        // isBooked || isHistory ? verticalSpace(10) : SizedBox(),

                        // isHistory ? GreenOutlinedButton() : SizedBox()
                      ],
                    ),

              isBooking || isCompleted
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Date booked'),
                        isBooking
                            ? GreenOutlinedButton(
                                onPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ViewSlotScreen()));
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
