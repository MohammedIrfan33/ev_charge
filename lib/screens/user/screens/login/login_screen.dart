import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/signup_login_text_button.dart';
import 'package:ev_charge/components/text_field_box.dart';
import 'package:ev_charge/screens/user/main_navigation_page.dart';
import 'package:ev_charge/screens/user/screens/login/widgets/signin_buttons.dart';
import 'package:ev_charge/screens/user/screens/signup/signup_screen.dart';
import 'package:ev_charge/screens/view_charging_sattion_book_details/view_charging_station_status.dart';
import 'package:ev_charge/screens/view_service_station_book_details/screens/view_service_stations_home.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 40.0,
              bottom: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: kSemiBoldStyle,
                ),
                verticalSpace(30.0),
                const TextFieldBox(
                  prefixIcon: kEmailIcon,
                  hintText: 'Email',
                ),
                verticalSpace(15.0),
                const TextFieldBox(
                  prefixIcon: kPasswordIcon,
                  isSuffixIcon: true,
                  suffixIcon: kEyeIcon,
                  isPassword: true,
                  hintText: 'Password',
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget password?',
                        style: kSmallTextStyle,
                      )),
                )
                ,

                Row(
                  children: [
                    Expanded(
                      child: SiginInWithButtons(
                        label: 'Charging Station',
                        icon: Icons.charging_station_rounded,
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewChargingStationStatus()));
                        },
                      ),
                    ),
                    horizontalSpace(20.0),
                    Expanded(
                      child: SiginInWithButtons(
                        label: 'Service Station',
                        icon: Icons.car_repair_rounded,
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewServiceStationHome()));
                        },
                      ),
                    ),
                  ],
                ),
                verticalSpace(20),
                Buttons(onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                }, label: 'Login as user'),
                const Spacer(),
                //custom Widget
                SignupLoginTextButton(
                  text: 'Don\'t have an Account ',
                  labelButton: 'SignUp',
                  onPress: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
