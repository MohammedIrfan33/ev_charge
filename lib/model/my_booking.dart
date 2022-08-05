

import 'package:ev_charge/servieces/myBooking.dart';

class MyBookingData{
  String ? name;
  String ? image;
  String ? address;
  String ? type;
  String ? power;
  String ? electricCharge;
  String ? remainingTime;
  double ? charging;

  void getAllData(int  index){
      name = myBooking[index]["name"];
      image = myBooking[index]["image"];
      address = myBooking[index]["address"];
      type = myBooking[index]["type"];
      power = myBooking[index]["power"].toString();
      electricCharge =  myBooking[index]["electricCharge"];
      remainingTime = myBooking[index]["remainTime"].toString();
      charging = (myBooking[index]["charge"]/100);
  }

}
