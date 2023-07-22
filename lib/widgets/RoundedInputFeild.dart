import 'package:flutter/material.dart';
import 'package:new_login/constant.dart';

import 'TextFieldContiner.dart';

class RoundedInputFeild extends StatelessWidget {
  final String? hinttext;
  final IconData icon;
  const RoundedInputFeild({super.key, this.hinttext, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFieldContiner(
      child: TextFormField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
              fontFamily: 'OpenSans',
            ),
            border: InputBorder.none),
      ),
    );
  }
}
