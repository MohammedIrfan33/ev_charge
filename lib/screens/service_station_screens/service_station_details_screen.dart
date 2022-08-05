import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class ServiceStationsDetailsScreen extends StatelessWidget {
  const ServiceStationsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(
            appBarLabel: 'service station name',
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/neardetail.png',
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text('charging point name'),
                  RowIconText(icon: kLocation, text: 'location')

                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
