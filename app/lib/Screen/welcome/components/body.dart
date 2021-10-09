import 'package:app/Screen/welcome/components/background.dart';
import 'package:app/components/rounded_button.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get dc info size
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WelCome to Edu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              colorText: Colors.white,
              text: "Login",
              press: () => {},
              color: kPrimary,
              radius: 50,
            ),
            RoundedButton(
              colorText: Colors.black,
              text: "Login",
              press: () => {},
              color: kPrimaryLightColor,
              radius: 50,
            )
          ],
        ),
      ),
    );
  }
}
