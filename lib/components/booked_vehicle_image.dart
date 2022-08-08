import 'package:flutter/material.dart';

class BookedVehicleImage extends StatelessWidget {
  const BookedVehicleImage({
    required this.image,
    Key? key,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
