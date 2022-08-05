import 'package:ev_charge/components/row_icon_text.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HeadSection extends StatelessWidget {
   const HeadSection({Key? key}) : super(key: key);

  final double _rating = 3;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'charging station',
                style: kSubHeadingBoldStyle,
              ),
              verticalSpace(10.0),
              Row(
                children: [
                  Text(_rating.toString()),
                  RatingBar.builder(
                    initialRating: _rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 10,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: kSecondaryColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const RowIconText(icon: kPerson, text: '3km'),
                ],
              ),
              verticalSpace(10.0),
              const Text(
                'OPEN 24 hours',
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
            ],
          ),
        ),
        Positioned(
            top: -15.0,
            right: -15.0,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: const BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              alignment: Alignment.center,
              child: const Text(
                'open',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ))
      ],
    );
  }
}
