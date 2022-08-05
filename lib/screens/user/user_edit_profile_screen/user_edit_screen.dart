import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/custom_app_bar.dart';
import 'package:ev_charge/components/profile_avathar.dart';
import 'package:ev_charge/screens/take_picture_camera.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

class UserEditScreen extends StatelessWidget {
  const UserEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: CustomAppBar(
            appBarLabel: 'Edit Profile',
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  const ProfileAvathar(
                    radius: 40,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: (){
                        showAnimatedDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return  const TakePictureScreen();
                          },
                          animationType: DialogTransitionType.scale,
                          curve: Curves.ease,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add_a_photo,
                            size: 15.0,
                          )),
                    ),
                  ),
                ],
              ),
              verticalSpace(30),
              const TextFieldBox(hintText: 'Name', icon: Icons.person,keyboardType: TextInputType.text,),
              verticalSpace(15),
              const TextFieldBox(hintText: 'Phone', icon: Icons.phone,keyboardType: TextInputType.number,),
              verticalSpace(15),
              const TextFieldBox(hintText: 'Email ', icon: Icons.email,keyboardType: TextInputType.emailAddress,),

              const Spacer(),
              Buttons(onPress: () {}, label: 'Save Profile')
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
    required this.hintText,
    required this.icon,
    required this.keyboardType,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: kHintStyle,
        prefixIconConstraints: const BoxConstraints(),
        prefixIcon: Padding(
          padding: EdgeInsets.all(10.0),
          child: IconTheme(
            data: IconThemeData(
              color: kSecondaryColor,
            ),
            child: Icon(icon,size: 20,),
          )
        ),
        enabledBorder: border(color: kborderGrayShadedColor),
        focusedBorder: border(color: kSecondaryColor),
        contentPadding: const EdgeInsets.all(0),
      ),
    );
  }
}

OutlineInputBorder border({required Color color}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: color,
        width: .8,
      ));
}