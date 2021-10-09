import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color;
  final double radius;
  final Color colorText;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.radius,
    required this.colorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () => press,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: colorText),
        ),
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)))),
      ),
    );
  }
}
