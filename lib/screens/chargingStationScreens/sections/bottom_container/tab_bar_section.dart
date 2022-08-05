import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:ev_charge/screens/chargingStationScreens/widgets/fullView.dart';
import 'package:ev_charge/screens/chargingStationScreens/widgets/photos.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 40.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0)
            ),
            child:  const  TabBar(
              labelColor: kSecondaryColor,
              labelStyle: kGreenTextStyle,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.black,
              indicator: BubbleTabIndicator(
                indicatorHeight: 40.0,
                indicatorRadius: 30.0,
                indicatorColor: kPrimaryColor,
              ) ,
              tabs: [
                Tab(text: 'Full view',),
                Tab(text: 'Photos',),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(children: [
             FullViewTab(),
              PhotosTab(),
            ]),
          )
        ],
      ),
    );
  }
}
