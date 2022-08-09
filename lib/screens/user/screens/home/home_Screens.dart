import 'package:ev_charge/components/row_heading.dart';
import 'package:ev_charge/screens/user/screens/home/sections/my_booking.dart';
import 'package:ev_charge/screens/user/screens/home/sections/near_by_location.dart';
import 'package:ev_charge/screens/user/screens/home/sections/nearby_serviece_list.dart';
import 'package:ev_charge/components/stack_Items.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                //stack item is custom Widget
                child: const StackItems(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          verticalSpace(20.0),
                          //custom widget for heading  of section my booking
                          RowHeading(
                            heading: 'MyBooking',
                            onClick: () {
                              print("hi");
                            },
                          ),
                          //custom widget for my booking section
                          const MyBooking(),
                          //custom widget for heading near by me section
                          RowHeading(
                            heading: 'Near by Me',
                            onClick: () {
                              print("hi");
                            },
                          ),
                          //custom widget for near by me section
                          const NearByLocation(),
                          //near by service station list
                          RowHeading(heading: 'Near Service Station', onClick: (){}),
                          const NearByServiceStaionList()
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

