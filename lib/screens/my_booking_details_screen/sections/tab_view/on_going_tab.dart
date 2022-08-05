import 'package:ev_charge/screens/on_charging_screen/my_booking_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/vehicle_details_card.dart';

class OnGoingTab extends StatelessWidget {
  const OnGoingTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const OnChargingScreen()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 3.2,
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.only(top: 20.0, left: 5, right: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(1, 2))
                    ]),
                child: const VehicleDetailsCard(),
              ),
            )
    );
  }
}
