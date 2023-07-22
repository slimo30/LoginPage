import 'package:flutter/material.dart';
import 'package:new_login/constant.dart';
import 'package:new_login/widgets/TextFieldContiner.dart';

class RoundedPasswordFeild extends StatelessWidget {
  const RoundedPasswordFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFieldContiner(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            hintText: 'Password',
            hintStyle: TextStyle(
              fontFamily: 'OpenSans',
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
