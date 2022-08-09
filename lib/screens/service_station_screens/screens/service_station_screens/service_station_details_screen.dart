import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/screens/service_station_screens/screens/service_registration_screen/service_registration_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class ServiceStationsDetailsScreen extends StatelessWidget {
  const ServiceStationsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/neardetail.png',
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'charging point name',
                      style: kSemiBoldStyle,
                    ),
                    verticalSpace(20),
                    const RowIconText(icon: kLocation, text: 'location'),
                    verticalSpace(10),
                    const RowIconText(icon: kPerson, text: '3km Away'),
                    verticalSpace(15),
                    const Text('Our Service',style: kSmallBoldTextStyle,),
                    verticalSpace(20),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: const [
                        ServicesContainerCard(
                            icon: Icons.pin_drop_rounded,
                            label: 'Pick and Drop'),
                        ServicesContainerCard(
                          icon: Icons.assistant,
                          label: 'Road Side Assistance',
                        ),
                        ServicesContainerCard(
                          icon: Icons.local_car_wash_rounded,
                          label: 'Car Wash',
                        ),
                        ServicesContainerCard(
                            icon: Icons.charging_station_rounded,
                            label: 'Charging Facility'),
                      ],
                    ),
                    const Spacer(),
                    Buttons(onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ServiceRegistrationForm()));
                    }, label: 'Book service')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServicesContainerCard extends StatelessWidget {
  const ServicesContainerCard({
    required this.icon,
    required this.label,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 1,
                spreadRadius: 2,
                offset: const Offset(0, 2))
          ],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kSecondaryColor,
            width: 1.0,
          )),
      child: Column(
        children: [
          Icon(icon,color: kSecondaryColor,),
          verticalSpace(10,),
          Text(label,textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
