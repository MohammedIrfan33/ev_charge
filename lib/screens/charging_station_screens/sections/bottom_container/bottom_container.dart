
import 'package:ev_charge/screens/charging_station_screens/sections/bottom_container/head_section.dart';
import 'package:ev_charge/screens/charging_station_screens/sections/bottom_container/tab_bar_section.dart';
import 'package:ev_charge/screens/charging_station_screens/sections/bottom_section.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 3 / 4,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25.0),
          topLeft: Radius.circular(25.0),
        ),
      ),
      child: Column(
        children: [
          const HeadSection(),
          verticalSpace(20),
          const Expanded(
            child: TabBarSection(),
          ),
          const BottomSection()
        ],
      ),
    );
  }
}