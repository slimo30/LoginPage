import 'package:flutter/material.dart';
import 'package:new_login/components/page_titel_bar.dart';
import 'package:new_login/components/upside.dart';
import 'package:new_login/constant.dart';
import 'package:new_login/widgets/RoundedButton.dart';
import 'package:new_login/widgets/RoundedInputFeild.dart';
import 'package:new_login/widgets/RoundedPasswordFeild.dart';
import 'package:new_login/widgets/roundedicon.dart';

import '../components/UnderPart.dart';
import 'SignupPage.dart';

class LogeinScreen extends StatelessWidget {
  const LogeinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: s.width,
        height: s.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const Upside(ImgUrl: 'assets/images/login.png'),
              const PageTitelBar(title: 'Login to your account'),
              Padding(
                padding: EdgeInsets.only(top: 320),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        child: iconButton(context),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Or use your email account',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'OpenSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Form(
                        child: Column(
                          children: [
                            //////////////////////////////
                            RoundedInputFeild(
                              hinttext: 'Email',
                              icon: Icons.email,
                            ),
                            RoundedPasswordFeild(),
                            switchListTile(),
                            RoundedButton(
                              text: 'LOGIN',
                              textColor: Colors.white,
                              press: () {},
                            ),

                            ////////////////////////////////
                            SizedBox(
                              height: 10,
                            ),
                            UnderPart(
                              titel: "Don't have an account ?",
                              navegatortext: 'Register here',
                              OnTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupPage()));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'forgot Password?',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 13,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  switchListTile() {
    return Padding(
      padding: EdgeInsets.only(left: 50, right: 40),
      child: SwitchListTile(
        dense: true,
        value: true,
        title: Text(
          'Remember me',
          style: TextStyle(fontSize: 14, fontFamily: 'OpenSans'),
        ),
        onChanged: (val) {
          return;
        },
        activeColor: kPrimaryColor,
      ),
    );
  }
}

iconButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedIcoun(ImgUrl: 'assets/images/facebook.png'),
        SizedBox(
          width: 30,
        ),
        RoundedIcoun(ImgUrl: 'assets/images/google.jpg'),
        SizedBox(
          width: 30,
        ),
        RoundedIcoun(ImgUrl: 'assets/images/twitter.png'),
      ],
    ),
  );
}
