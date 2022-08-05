import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/screens/book_slot_details_page/book_slot_details_screen.dart';
import 'package:ev_charge/components/details_column_text.dart';
import 'package:ev_charge/components/details_row_text.dart';
import 'package:ev_charge/screens/on_charging_screen/my_booking_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ViewSlotScreen extends StatelessWidget {
  const ViewSlotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: CustomAppBar( appBarLabel: 'View Slot',),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Booking No:123456789',
                  textAlign: TextAlign.left,
                ),
                const BookedVehicleImage(image: 'assets/images/car_circle.png',),
                const Text(
                  'Vehicle name',
                  style: kSemiBoldStyle,
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                const DetailsRowText(
                  text: 'text',
                  value: 'value',
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    DetailsColumnText(
                      text: 'text',
                      value: 'value',
                    ),
                    DetailsColumnText(
                      text: 'text',
                      value: 'value',
                    ),
                    DetailsColumnText(
                      text: 'text',
                      value: 'value',
                    ),
                  ],
                ),
                const Spacer(),
                GreenOutlinedButton(label: 'Start Charging' , onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnChargingScreen()));
                }),
                verticalSpace(10),
                Buttons(onPress: () {
                  showAnimatedDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return  const AnimatedDeletePopup();
                    },
                    animationType: DialogTransitionType.scale,
                    curve: Curves.ease,
                    duration: const Duration(seconds: 1),
                  );

                }, label:'Delete Slot'),
              ],
            )),
      ),
    );
  }
}

class AnimatedDeletePopup extends StatelessWidget {
  const AnimatedDeletePopup({
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
                  SvgPicture.asset('assets/images/delete.svg'),
                  verticalSpace(20),
                  const Text('Do you want to delete slot?',style: kSmallTextStyle,textAlign: TextAlign.center,),
                  verticalSpace(20),
                  Row(
                    children: [
                      Expanded(child: GreenOutlinedButton(onPress:(){},label: 'No',)),
                      horizontalSpace(10),
                      Expanded(child: Buttons(onPress: (){}, label: 'yes')),
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
