import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/signup_login_text_button.dart';
import 'package:ev_charge/components/text_field_box.dart';
import 'package:ev_charge/screens/user/screens/login/login_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  final bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 50.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Sign Up',
                  style: kSemiBoldStyle,
                ),
                verticalSpace(20.0),
                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Enter the Detals to signup your account',
                    style: kSmallBoldTextStyle,
                  ),
                ),
                verticalSpace(30),
                const TextFieldBox(
                  prefixIcon: kUser,
                  hintText: 'Full name',
                ),
                verticalSpace(15.0),
                const TextFieldBox(
                  prefixIcon: kEmailIcon,
                  hintText: 'Email',
                ),
                verticalSpace(15.0),
                const TextFieldBox(
                  prefixIcon: kBlackPhone,
                  hintText: 'Mobile Number',
                ),
                verticalSpace(15.0),
                const TextFieldBox(
                  prefixIcon: kPasswordIcon,
                  hintText: 'Password',
                  isPassword: true,
                  suffixIcon: kEyeIcon,
                  isSuffixIcon: true,
                ),
                verticalSpace(10.0),
                Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: null,
                      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                    ),
                    const Text(
                      'I Agree With',
                      style: kExtraSmallText,
                    ),
                    const Text(
                      'Terms And Privacy',
                      style: kExtraSmallTextGreen,
                    )
                  ],
                ),
                verticalSpace(15.0),
                Buttons(onPress: () {}, label: 'Sign Up'),
                const Spacer(),
                SignupLoginTextButton(
                  text: 'Already have an Account',
                  labelButton: 'Login',
                  onPress: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

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
