import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/screens/charging_station_screens/location_screen/widgets/column_grey_text.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomCardSection extends StatelessWidget {
  const BottomCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              elevation: 10,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Stack(children: [
                            SizedBox(
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/images/nearby2.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                                left: 0,
                                child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                              decoration:  BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: .5,
                                ),
                                  color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                )
                              ),
                              child: const Text('open',style: kSmallGreenBoldTextStyle),
                            ))
                          ]),
                          horizontalSpace(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Head',
                                style: kSmallBoldTextStyle,
                              ),
                              RowIconText(icon: kLocation, text: 'location')
                            ],
                          )
                        ],
                      ),
                    ),
                    verticalSpace(10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        const ColumnGreyText(
                          text: 'connection',
                          value: '07',
                        ),
                        horizontalSpace(20),
                        const ColumnGreyText(
                          text: 'Speed',
                          value: '17kwh',
                        ),
                        horizontalSpace(20),
                        const ColumnGreyText(
                          text: 'Distance',
                          value: '2.5km',
                        ),
                        horizontalSpace(20),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/save2.svg',
                              width: 25,
                              height: 25,
                            ),
                            horizontalSpace(20),
                            SvgPicture.asset(
                              'assets/images/map.svg',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
