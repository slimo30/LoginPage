import 'package:flutter/material.dart';

import 'package:new_login/components/page_titel_bar.dart';
import 'package:new_login/components/upside.dart';
import 'package:new_login/constant.dart';
import 'package:new_login/widgets/RoundedButton.dart';
import 'package:new_login/widgets/RoundedInputFeild.dart';
import 'package:new_login/widgets/RoundedPasswordFeild.dart';

import '../components/UnderPart.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
              const Upside(ImgUrl: 'assets/images/register.png'),
              const PageTitelBar(title: 'Create new  account'),
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
                            RoundedInputFeild(
                              hinttext: 'Email',
                              icon: Icons.email,
                            ),RoundedInputFeild(
                              hinttext: 'Name',
                              icon: Icons.person,
                            ),
                            RoundedPasswordFeild(),
                            RoundedButton(
                              text: 'Sign Up',
                              textColor: Colors.white,
                              press: () {},
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            UnderPart(
                              titel: "Already have an account ?",
                              navegatortext: 'Login here',
                              OnTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LogeinScreen()));
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
}
