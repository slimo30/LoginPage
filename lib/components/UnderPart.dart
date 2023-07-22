import 'package:flutter/material.dart';
import 'package:new_login/constant.dart';

class UnderPart extends StatelessWidget {
  final String titel;
  final String navegatortext;
  final Function() OnTap;
  const UnderPart(
      {super.key,
      required this.titel,
      required this.navegatortext,
      required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titel,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 13,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () {
            OnTap();
          },
          child: Text(
            navegatortext,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 13,
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
