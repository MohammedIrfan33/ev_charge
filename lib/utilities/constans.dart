import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//color
const kPrimaryColor = Color(0xFFBEE4BF);
const kSecondaryColor = Color(0xFF19731C);
const kborderGrayShadedColor = Color(0xFFBDBDBD);

//style
const kSplashLogoTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 20.0,
);

const kGreenTextStyle =
    TextStyle(color: kSecondaryColor, fontWeight: FontWeight.bold);
const kSmallGreenBoldTextStyle =
TextStyle(color: kSecondaryColor, fontWeight: FontWeight.w600,fontSize: 12.0);
const kChangeLocationStyle =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10.0);

const kSubHeadingStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 17.0,
    fontFamily: 'inter');

const kSubHeadingSemiBoldStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    fontFamily: 'inter');
const kSubHeadingBoldStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
    fontFamily: 'inter');

const kSemiBoldStyle =
    TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w700);
const kHintStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w500,
  color: Colors.grey
);

const kSmallTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.black,
  fontWeight: FontWeight.w500
);

const kSmallBoldTextStyle = TextStyle(
    fontSize: 14.0,
    color: Colors.black,
    fontWeight: FontWeight.w600
);

const kButtonTextStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600
);

const kExtraSmallText = TextStyle(
  fontSize: 12.0,
  color: Colors.black
);

const kSmallText14 = TextStyle(
    fontSize: 14,
    color: Colors.black
);
const kExtraSmallBoldText = TextStyle(
    fontSize: 13.0,
    color: Colors.black,
  fontWeight: FontWeight.w600
);

const kExtraSmallTextGreen = TextStyle(
    fontSize: 12.0,
    color: kSecondaryColor
);

const kSmallGreyTextStyle = TextStyle(
  fontSize: 14.0,
  color: Colors.grey,
  fontWeight: FontWeight.w500
);

const kExtraSmallGreyTextStyle = TextStyle(
    fontSize: 14.0,
    color: Colors.grey,
    fontWeight: FontWeight.w500
);


const kSplashLogoSize = 400.0;
const kSplashImageSize = 150.0;

const kSpaceVertical20 = SizedBox(
  height: 20,
);
const kSpaceVertical30 = SizedBox(
  height: 30,
);

//width and heights

const kTextFieldHeight = 45.0;

// images
const profileIMage = 'assets/images/profile.png';
const kEmailIcon = 'assets/images/message.svg';
const kEyeIcon = 'assets/images/eye.svg';
const kPasswordIcon = 'assets/images/lock.svg';
const kGoogleIcon = 'assets/images/google.svg';
const kFacebook = 'assets/images/facebook.svg';
const kBlackPhone = 'assets/images/call_black.svg';
const kUser = 'assets/images/user.svg';
const kBike = 'assets/images/bike.png';
const kAuto = 'assets/images/auto.png';
const kLocation = 'assets/images/location.svg';
const kPowerGreen = 'assets/images/power_green.svg';
const kfuelGreen ='assets/images/fuel_green.svg';
const kgreenConnextionGreen = 'assets/images/green_connextion.svg';
const kPerson = 'assets/images/person.svg';
const kStar = 'assets/images/like.svg';
const kCharge  = 'assets/images/charge.svg';
//imges icon widgets

Widget kSearchIcon = Image.asset(
  'assets/images/search.png',
  width: 15.0,
  height: 15.0,
);

Widget kDirectionIcon = SvgPicture.asset(
  'assets/images/direction.svg',
  width: 25,
);
