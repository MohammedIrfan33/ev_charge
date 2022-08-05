import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/signup_login_text_button.dart';
import 'package:ev_charge/components/text_field_box.dart';
import 'package:ev_charge/screens/home/home_Screens.dart';
import 'package:ev_charge/screens/login/widgets/signin_buttons.dart';
import 'package:ev_charge/screens/signup/signup_screen.dart';
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
                //custom Widget
                Buttons(
                    onPress: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    label: 'Login'),
                verticalSpace(25.0),
                const Text(
                  'Or Sign in With',
                  style: kSmallTextStyle,
                ),
                verticalSpace(25.0),
                Row(
                  children: [
                    Expanded(
                      child: SiginInWithButtons(
                        label: 'Google',
                        icon: kGoogleIcon,
                        onPress: () {},
                      ),
                    ),
                    horizontalSpace(20.0),
                    Expanded(
                      child: SiginInWithButtons(
                        label: 'Facebook',
                        icon: kFacebook,
                        onPress: () {},
                      ),
                    ),
                  ],
                ),
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
                            builder: (context) => SignUpScreen()));
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
