import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/profile_avathar.dart';
import 'package:ev_charge/screens/user/user_details_screen/widgets/column_text_divider.dart';
import 'package:ev_charge/screens/user/user_details_screen/widgets/divider_line.dart';
import 'package:ev_charge/screens/user/user_edit_profile_screen/user_edit_screen.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          appBarLabel: 'MyProfile',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: ProfileAvathar(radius: 40,)),
            verticalSpace(30),
            TextColumnDivider(text: 'Full Name', value: 'full name of user'),
            const DividerLine(),
            TextColumnDivider(text: 'Phone Number', value: '2345678'),
            const DividerLine(),
            TextColumnDivider(text: 'Email', value: 'asd@gmail.com'),
            const DividerLine(),
            const Spacer(),
            Buttons(onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserEditScreen()));
            }, label: 'Edit Profile'),
          ],
        ),
      ),
    ));
  }
}



