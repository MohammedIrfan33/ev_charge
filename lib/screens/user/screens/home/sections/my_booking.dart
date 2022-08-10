import 'package:ev_charge/components/main_card.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/model/my_booking.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/on_charging_screen/my_booking_screen.dart';
import 'package:ev_charge/servieces/myBooking.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class MyBooking extends StatefulWidget {
  const MyBooking({
    Key? key,
  }) : super(key: key);

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  var myBookingData = MyBookingData();

  @override
  Widget build(BuildContext context) {
    setState(() {
      myBookingData;
    });
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      color: Colors.grey[200],
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: myBooking.length,
          itemBuilder: (context, index) {
            myBookingData.getAllData(index);
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnChargingScreen()));
              },
              child: MainCard(
                cardChild: Column(
                  children: [
                    //top section
                    Expanded(
                      child: Stack(
                        children: [
                          //backgroud container
                          Positioned(
                            top: 0.0,
                            left: 0.0,
                            child: Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          //image postion
                          Positioned(
                            right: 0,
                            top: 0,
                            child: SizedBox(
                              height: 100,
                              width: 130,
                              child: Image.asset(
                                myBookingData.image!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          //image name postion
                          Positioned(
                            top: 10.0,
                            left: 10.0,
                            child: SizedBox(
                              width: 100.0,
                              child: Text(
                                myBookingData.name ?? 'name',
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
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        verticalSpace(10.0),
                        RowIconText(
                          icon: kLocation,
                          text: myBookingData.address??'location',
                          iconWidth: 10.0,
                          iconHeight: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            RowIconText(
                              icon: kgreenConnextionGreen,
                              text: myBookingData.type??'location',
                              isGreyText: true,
                            ),
                            RowIconText(
                              icon: kPowerGreen,
                              text: '${myBookingData.power}kwh',
                              isGreyText: true,
                            ),
                            RowIconText(
                              icon: kfuelGreen,
                              text: myBookingData.electricCharge??'charge',
                              isGreyText: true,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              '${myBookingData.remainingTime} Min Remining',
                              style:const TextStyle(
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
                                  percent: myBookingData.charging??2.8,
                                  barRadius: const Radius.circular(16),
                                  progressColor: kSecondaryColor,
                                  backgroundColor: Colors.grey[300],
                                )),
                                horizontalSpace(10.0),
                                Text(
                                  '${(myBookingData.charging! * 100).toInt()}%',
                                  style: kExtraSmallTextGreen,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ))
                  ],
                ),
                onClick: () {},
              ),
            );
          }),
    );
  }
}
