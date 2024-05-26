import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final String? genderText;
  final IconData? genderIcon;
  GenderWidget({this.genderText, this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        genderIcon,
        size: 50,
        color: Colors.black54,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        '${genderText}',
        style: TextStyle(
            color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
      )
    ]);
  }
}
