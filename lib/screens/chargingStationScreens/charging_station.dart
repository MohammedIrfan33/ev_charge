import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/screens/chargingStationScreens/sections/bottom_container/bottom_container.dart';
import 'package:ev_charge/screens/chargingStationScreens/sections/bottom_section.dart';
import 'package:ev_charge/screens/chargingStationScreens/sections/bottom_container/head_section.dart';
import 'package:ev_charge/screens/chargingStationScreens/sections/bottom_container/tab_bar_section.dart';
import 'package:ev_charge/screens/chargingStationScreens/sections/header_image_section.dart';
import 'package:ev_charge/screens/chargingStationScreens/widgets/back_button.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class ChargingStationsScreen extends StatelessWidget {
  const ChargingStationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              const Positioned(
                child: ImageContainer()
              ),
              const Positioned(
                top: 0.0,
                left: 0.0,
                child: BackNavigateButtonIcon(),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4,
                left: 0,
                child: const BottomContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




