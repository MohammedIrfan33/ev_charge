import 'package:flutter/material.dart';

class VehicleDetailsCardContainer extends StatelessWidget {
  const VehicleDetailsCardContainer({
    required this.vehicleCardChild,
    Key? key,
  }) : super(key: key);

  final Widget vehicleCardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: vehicleCardChild,
    );
  }
}
