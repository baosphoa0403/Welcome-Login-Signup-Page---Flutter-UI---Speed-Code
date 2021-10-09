import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class AlreadyAnHaveAccount extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyAnHaveAccount({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ?" : "Already have an Account",
          style: const TextStyle(color: kPrimary),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style:
                const TextStyle(color: kPrimary, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
