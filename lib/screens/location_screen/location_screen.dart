import 'package:ev_charge/screens/location_screen/sections/bottom_card_section.dart';
import 'package:ev_charge/screens/location_screen/sections/search_box_sections.dart';
import 'package:flutter/material.dart';


import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
            const Positioned(
              top: 10,
              left: 10,
              //Custom Widget section
              child: SearchBoxSection(),
            ),
            const Positioned(
              bottom: 20,
              //custom Widget sections
              child: BottomCardSection(),
            )
          ],
        ),
      ),
    );
  }
}
