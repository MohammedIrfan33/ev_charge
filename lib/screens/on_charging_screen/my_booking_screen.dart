import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/svg_icon.dart';
import 'package:ev_charge/components/text_column.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class OnChargingScreen extends StatelessWidget {

   const OnChargingScreen({Key? key, this.vehicleName, this.chargingCondition, this.timeRemaining, this.text, this.value}) : super(key: key);


  final String? vehicleName;
  final String? chargingCondition;
  final String? timeRemaining;
  final String? text;
  final String? value;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        titleSpacing: 0,
        title: const Text(
          'Charging',
          style: kSemiBoldStyle,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            vehicleName ?? 'vehicle name',
            style: kSubHeadingBoldStyle,
          ),
          verticalSpace(30),
          CircularPercentIndicator(
            percent: .5,
            radius: 70,
            lineWidth: 8.0,
            backgroundColor: const Color(0xFFEEEEEE),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: kSecondaryColor,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SvgIcon(icon: kCharge),
                Text('50%', style: kSemiBoldStyle)
              ],
            ),
          ),
          verticalSpace(50),
          Row(
            children: [
              const Expanded(
                child: Image(
                  image: AssetImage('assets/images/car_big.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height/5,
                  alignment: Alignment.centerRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      TextColumn(text: 'Distance', value: '45km'),
                      TextColumn(text: 'Duration', value: '10 Hr 20 min'),
                      TextColumn(text: 'Time Remining', value: '40min'),
                    ],
                  ),
                ),
              )
            ],
          ),
          const  Spacer(),
          Buttons(onPress: (){}, label: 'Stop Charging'),
          TextButton.icon(
              onPressed: null,
              icon:  const Icon(Icons.pause_circle),
              label:const  Text('pause charging'),
            style: TextButton.styleFrom(
              primary: kSecondaryColor,
              onSurface: Colors.grey[900],
            ),
          )

        ]),
      ),
    );
  }
}

