import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/screens/charging_station_screens/view_slot_screen/view_slot_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class VehicleDetailsCard extends StatelessWidget {
  const VehicleDetailsCard({
    this.isBooked = false,
    this.isHistory = false,
    Key? key,
  }) : super(key: key);

  final bool isBooked;
  final bool isHistory;

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
              const RowIconText(
                icon: kLocation,
                text: 'location',
                iconWidth: 10.0,
                iconHeight: 10.0,
              ),
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
              isBooked
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const RowIconText(icon: kPerson, text: '3km Away'),
                        SvgPicture.asset('assets/images/map.svg')
                      ],
                    )
                  :isHistory ? const SizedBox() :Column(
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

              isBooked || isHistory ?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Date booked'),
                  isBooked
                      ?
                  GreenOutlinedButton(
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ViewSlotScreen()));
                    },

                    label: 'View Details',
                    height: 35,
                  )
                      : const SizedBox(),
                  isHistory
                      ? GreenOutlinedButton(
                    onPress: () {},
                    label: 'Rebook Slot',
                    height: 35,
                  )
                      : const SizedBox(),
                ],
              ): const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
