import 'package:ev_charge/components/status_bar_container.dart';
import 'package:ev_charge/screens/view_service_station_book_details/Widgets/service_status_bar_Container.dart';
import 'package:flutter/material.dart';

class CompletedServiceStatus extends StatelessWidget {
  const CompletedServiceStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) =>Container(
          height: MediaQuery.of(context).size.height / 2.6,
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
          child: const ServiceStatusBarContainer(isCompleted: true,)
        )

    );
  }
}

