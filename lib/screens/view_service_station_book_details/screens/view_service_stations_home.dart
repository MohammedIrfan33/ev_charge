import 'package:ev_charge/components/main_card.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/components/stack_Items.dart';
import 'package:ev_charge/screens/view_service_station_book_details/screens/view_service_station_status.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class ViewServiceStationHome extends StatefulWidget {
  const ViewServiceStationHome({Key? key}) : super(key: key);

  @override
  State<ViewServiceStationHome> createState() => _ViewServiceStationHomeState();
}

class _ViewServiceStationHomeState extends State<ViewServiceStationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                    color: kPrimaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    child: StackItems(
                      isServiceStation: true,
                    )),
                Expanded(
                  child: Container(
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    color: Colors.grey[200],
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) => MainCard(
                        cardChild: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Expanded(
                                      child: Image.asset(
                                    'assets/images/near1.png',
                                  )),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'service point name',
                                            style: kSmallBoldTextStyle,
                                            textAlign: TextAlign.start,
                                          ),
                                          verticalSpace(10.0),
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
                                          const Text('status:open',style: kGreenTextStyle,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        onClick: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewServiceStationStatus()));
                        },
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
