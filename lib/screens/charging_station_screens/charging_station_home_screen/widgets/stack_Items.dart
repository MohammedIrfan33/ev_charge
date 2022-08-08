import 'package:ev_charge/components/profile_avathar.dart';
import 'package:ev_charge/components/searchBox.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class StackItems extends StatelessWidget {
  const StackItems({
    this.isServiceStation = false,
    Key? key,
  }) : super(key: key);
  final bool isServiceStation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Usa'.toUpperCase(),
                style: kGreenTextStyle,
              ),
              GestureDetector(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/location.svg',
                      width: 10.0,
                      height: 10.0,
                    ),
                    const Text(
                      'change Location',
                      style: kChangeLocationStyle,
                    ),
                  ],
                ),
              ),
              kSpaceVertical20,
              Text(
                'Choose ${isServiceStation ?'BookService' : 'EV Chareger'}',
                style: kSubHeadingStyle,
              ),
              const Text(
                'Near By you',
                style: kSubHeadingStyle,
              ),
              kSpaceVertical20,
              Row(
                children: [
                  const Expanded(
                    flex: 6,
                    child: SearchBox(),
                  ),
                  Expanded(
                    flex: 1,
                    child: kDirectionIcon,
                  ),
                ],
              )
            ],
          ),
        ),
       const  Positioned(
          top: 0,
          right: 0,
          child: ProfileAvathar(),
        )
      ],
    );
  }
}
