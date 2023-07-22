import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_login/constant.dart';

class Upside extends StatelessWidget {
  final String ImgUrl;
  const Upside({super.key, required this.ImgUrl});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: s.width,
          height: s.height / 2.5,
          color: kPrimaryColor,
          child: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Image.asset(
              ImgUrl,
              alignment: Alignment.topCenter,
              scale: 8,
            ),
          ),
        ),
        iconbutton(context),
        Positioned(
          left: 20,
          top: 50,
          child: Image.network(
              scale: 2,
              'https://ouch-cdn2.icons8.com/gEMjZ4ZC639WYTYjpan-J3XByArwXzS7lUcNL-UMVdk/rs:fit:196:289/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMi80/NzU5OTI4ZS04OWE3/LTRhOTYtYjdjMi0w/ZDA0MWI2Y2E3MTQu/c3Zn.png'),
        ),
        Positioned(
          right: 0,
          top: 60,
          child: Image.network(
              scale: 2,
              'https://ouch-cdn2.icons8.com/vKz7XNZvZiNKlkUWT2HjP8oNZ8hZ0UblhuF8J6sGRGI/rs:fit:196:112/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNjg3/LzA3ZDZiZjRmLWFj/OTYtNGRmMy05ZGYz/LTNhNWQzOWI5NGYz/MC5zdmc.png'),
        ),
      ],
    );
  }

  iconbutton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(CupertinoIcons.arrow_left),
      color: Colors.white,
      iconSize: 30,
    );
  }
}
