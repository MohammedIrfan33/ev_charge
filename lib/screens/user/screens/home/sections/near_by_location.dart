import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/screens/charging_station_screens/charging_station.dart';
import 'package:ev_charge/components/main_card.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class NearByLocation extends StatelessWidget {
  const NearByLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      color: Colors.grey[200],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => MainCard(
          cardChild: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChargingStationsScreen()));
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

                        children:[
                            const Text(
                                'charging point',
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
                            verticalSpace(10.0),
                            Row(
                              children:const  [
                                Expanded(
                                  child: RowIconText(
                                    icon: kStar,
                                    text: '5.0',
                                    iconHeight: 15.0,
                                  ),
                                ),
                                Expanded(
                                  child: RowIconText(
                                    icon: kgreenConnextionGreen,
                                    text: '7.0',
                                    iconHeight: 15.0,
                                  ),
                                ),
                              ],
                            )
                        ],
                      ),
                          ),),
                    ],
                  ),
                ),
                GreenOutlinedButton(onPress: (){},label: 'Book Slot',height: 35,)
              ],
            ),
          ),
          onClick: () {},
        ),
      ),
    );
  }
}

