import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot/Widgets/head_text.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot/sections/connection_type.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot/sections/date_picker.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot/sections/vehicle_fuel.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot/sections/vehicle_model.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot/sections/vehicle_type.dart';
import 'package:ev_charge/screens/user/charging_station_screens/screens/book_slot_details_page/book_slot_details_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';


class BookSlot extends StatefulWidget {
  const BookSlot({Key? key}) : super(key: key);

  @override
  State<BookSlot> createState() => _BookSlotState();
}

class _BookSlotState extends State<BookSlot> {
  List<String> items = ['item1', 'item2', 'item3'];

  String selectedItems = 'item1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(50), child: CustomAppBar(appBarLabel: 'Book Slot',)),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("hello", style: kSemiBoldStyle),
              verticalSpace(5),
              const Text("please fill that all details to start booking slot",
                  style: kSmallGreyTextStyle),
              verticalSpace(15),
              //vehicle type selection
              const HeadText(
                text: 'Select your vehicle type',
              ),
              const VehicleTypeDropDown(),
              //vehicle model selection
              const HeadText(
                text: 'Select Your Vehicle Model',
              ),
              const VehicleModel(),
              verticalSpace(10),

              //vehicle fuel type selection
              const HeadText(
                text: 'Select Your Vehicle Fuel',
              ),
              const VehicleFuelDropDown(),

              //vehicle port connection type
              const HeadText(
                text: 'Select Connection Type',
              ),
              const ConnectionTypeDropDown(),

              //book slot date
              const HeadText(
                text: 'Select Date For Your SLot',
              ),
              const SelectDate(),
              const Spacer(),
              Buttons(
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const BookSlotDetailsScreen()));
                },
                label: 'Next',
              )
            ],
          ),
        ),
      ),
    );
  }
}




