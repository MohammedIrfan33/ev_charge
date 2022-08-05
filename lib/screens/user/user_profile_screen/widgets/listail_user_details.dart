import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class ListTailUserDetails extends StatelessWidget {
  const ListTailUserDetails({
    required this.onPress,
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      visualDensity: VisualDensity(vertical: -2.5),
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
      minLeadingWidth: 20,
      iconColor: kSecondaryColor,
      onTap: (){
        onPress();
      },
    );


  }
}




