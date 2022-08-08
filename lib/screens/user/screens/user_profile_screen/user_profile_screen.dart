import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/profile_avathar.dart';
import 'package:ev_charge/screens/user/screens/login/login_screen.dart';
import 'package:ev_charge/screens/user/screens/user_details_screen/user_details_screen.dart';
import 'package:ev_charge/screens/user/screens/user_profile_screen/widgets/listail_user_details.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          appBarLabel: 'Profile',
        ),
      ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
               const ProfileAvathar(radius: 40.0,),
                const Text('User Name',style: kSmallTextStyle,),
                const Text('location'),
                verticalSpace(20),
                ListTailUserDetails(title: 'My profile',icon: Icons.person,onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDetailsScreen()));
                },),
                verticalSpace(10),
                ListTailUserDetails(title: 'Saved Slot',icon: Icons.bookmark,onPress: (){},),
                verticalSpace(10),
                ListTailUserDetails(title: 'My Booking',icon: Icons.bookmark_outline,onPress: (){},),
                verticalSpace(10),
                ListTailUserDetails(title: 'My Car ',icon: Icons.drive_eta,onPress: (){},),
                verticalSpace(10),
                ListTailUserDetails(title: 'Settings ',icon: Icons.settings,onPress: (){},),
                const Spacer(),
                Buttons(onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                }, label: 'Log out')


              ],
            ),
          ),
    ));
  }
}

