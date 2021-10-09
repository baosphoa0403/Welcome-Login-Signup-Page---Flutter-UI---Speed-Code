import 'package:app/components/text_field_container.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextFieldContainer(
        child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        border: InputBorder.none,
        icon: Icon(
          Icons.lock,
          color: kPrimary,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: kPrimary,
        ),
      ),
    ));
  }
}
