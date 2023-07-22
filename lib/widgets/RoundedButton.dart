import 'package:flutter/material.dart';
import 'package:new_login/constant.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final Color? textColor;
  const RoundedButton(
      {super.key, required this.text, this.press, this.textColor});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: s.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
      ),
    );
  }
}
