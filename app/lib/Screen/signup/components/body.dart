import 'package:app/Screen/login/login_screen.dart';
import 'package:app/Screen/signup/components/background.dart';
import 'package:app/Screen/signup/components/on_divider.dart';
import 'package:app/Screen/signup/components/social_icon.dart';
import 'package:app/components/already_have_account.dart';
import 'package:app/components/rounded_button.dart';
import 'package:app/components/rounded_input_field.dart';
import 'package:app/components/rounded_password_field.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "SIGNUP",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SvgPicture.asset("assets/icons/signup.svg"),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChange: (String value) {},
        ),
        RoundedButton(
          text: "SIGNUP",
          press: () {},
          radius: 50,
          colorText: Colors.white,
          color: kPrimary,
        ),
        SizedBox(height: size.height * 0.03),
        AlreadyAnHaveAccount(
          login: false,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LoginScreen();
                },
              ),
            );
          },
        ),
        const OnDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocalIcon(
              iconSrc: "assets/icons/facebook.svg",
              press: () {},
            ),
            SocalIcon(
              iconSrc: "assets/icons/twitter.svg",
              press: () {},
            ),
            SocalIcon(
              iconSrc: "assets/icons/google-plus.svg",
              press: () {},
            ),
          ],
        )
      ],
    ));
  }
}
