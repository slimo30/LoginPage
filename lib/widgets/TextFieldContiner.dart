import 'package:flutter/material.dart';
import 'package:new_login/constant.dart';

class TextFieldContiner extends StatelessWidget {
  final Widget? child;
  const TextFieldContiner({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
