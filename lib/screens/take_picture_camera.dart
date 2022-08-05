import 'package:ev_charge/components/buttons.dart';
import 'package:ev_charge/components/green_outlined_button.dart';
import 'package:ev_charge/components/profile_avathar.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:ev_charge/utilities/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({Key? key}) : super(key: key);

  @override
  State<TakePictureScreen> createState() => _TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
  Future takeImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height/2.3,
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ProfileAvathar(radius: 50,),
                  const Spacer(),
                  Buttons(onPress: (){
                      pickImage();
                  }, label: 'Upload Gallery',),
                  verticalSpace(5),
                  GreenOutlinedButton(onPress:(){
                    takeImage();
                  },label: 'Take Picture',)
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
