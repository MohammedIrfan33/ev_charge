import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/searchBox.dart';
import 'package:ev_charge/screens/view_service_station_book_details/screens/tab_view/booking_service.dart';
import 'package:ev_charge/screens/view_service_station_book_details/screens/tab_view/completed_service.dart';
import 'package:ev_charge/screens/view_service_station_book_details/screens/tab_view/pending_service.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';


class ViewServiceStationStatus extends StatefulWidget {
  const ViewServiceStationStatus({Key? key}) : super(key: key);

  @override
  State<ViewServiceStationStatus> createState() => _ViewChargingStationStatusState();
}

class _ViewChargingStationStatusState extends State<ViewServiceStationStatus> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: CustomAppBar(appBarLabel: 'My Booking',),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: kTextFieldHeight,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconConstraints: const BoxConstraints(),
                      prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: kSearchIcon),
                      contentPadding: const EdgeInsets.all(0),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: inputBorder,
                      focusedBorder: inputBorder,
                      hintText: "Serach",
                    ),
                  ),
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: const TabBar(
                            labelColor: kSecondaryColor,
                            labelStyle: kGreenTextStyle,
                            indicatorSize: TabBarIndicatorSize.tab,
                            unselectedLabelColor: Colors.black,
                            indicator: BubbleTabIndicator(
                              indicatorHeight: 30.0,
                              indicatorRadius: 8.0,
                              indicatorColor: kPrimaryColor,
                              tabBarIndicatorSize: TabBarIndicatorSize.tab,
                            ),
                            tabs: [
                              Tab(
                                text: 'Booking',
                              ),
                              Tab(
                                text: 'Pending',
                              ),
                              Tab(
                                text: 'Completed',
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: TabBarView(children: [
                            BookingServiceStatus(),
                            PendingServiceStatus(),
                            CompletedServiceStatus()
                          ]),
                        )
                      ],
                    ),
                  ),
                  // child: ListView.builder(itemCount: 4,itemBuilder:(context,index)=>const BookingDetailsCard()),
                )
              ],
            ),
          ),
        ));
  }
}



