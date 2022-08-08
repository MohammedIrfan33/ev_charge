import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AnimatedPopup extends StatelessWidget {
  const AnimatedPopup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/images/wallet.svg'),
                  verticalSpace(20),
                  const Text('Successfully !',style: kSemiBoldStyle,),
                  verticalSpace(20),
                  const Text('Your Vehicle added Success fully in your list ',style: kSmallTextStyle,textAlign: TextAlign.center,),
                  verticalSpace(20),
                  Row(
                    children: [
                      Expanded(child: Buttons(onPress: (){}, label: 'View')),
                      horizontalSpace(10),
                      Expanded(child: GreenOutlinedButton(onPress:(){},label: 'Not Now',)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
