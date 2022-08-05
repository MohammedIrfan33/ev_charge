import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/screens/chargingStationScreens/charging_station.dart';
import 'package:ev_charge/screens/home/widgets/main_card.dart';
import 'package:ev_charge/screens/service_station_screens/service_station_details_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class NearByServiceStaionList extends StatelessWidget {
  const NearByServiceStaionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      color: Colors.grey[200],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => MainCard(
          cardChild: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ServiceStationsDetailsScreen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Expanded(
                          child: Image.asset(
                        'assets/images/near1.png',
                      )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              const Text(
                                'service ponir name',
                                style: kSmallBoldTextStyle,
                                textAlign: TextAlign.start,
                              ),
                              verticalSpace(5.0),
                              const RowIconText(
                                icon: kLocation,
                                text: 'location',
                                iconHeight: 15.0,
                                iconWidth: 15.0,
                              ),
                              verticalSpace(10.0),
                              const RowIconText(
                                icon: kPerson,
                                text: "3.5Km away/50min",
                                isLongText: true,
                                iconHeight: 15.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GreenOutlinedButton(
                  onPress: () {},
                  label: 'Book Service',
                  height: 35,
                )
              ],
            ),
          ),
          onClick: () {},
        ),
      ),
    );
  }
}
