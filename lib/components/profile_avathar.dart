import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class ProfileAvathar extends StatelessWidget {
  const ProfileAvathar({this.radius=30,Key? key}) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: const AssetImage(profileIMage),
      radius: radius,
      backgroundColor: Colors.grey,
    );
  }
}
