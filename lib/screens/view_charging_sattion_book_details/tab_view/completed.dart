
import 'package:ev_charge/components/status_bar_container.dart';
import 'package:flutter/material.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) =>Container(
          height: MediaQuery.of(context).size.height / 2.4,
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
          child: StatusBarContainer(isCompleted: true,)
        )

    );
  }
}

