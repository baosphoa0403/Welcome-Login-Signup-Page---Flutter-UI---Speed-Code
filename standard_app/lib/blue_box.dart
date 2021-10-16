import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget {
  final Color color;

  const BlueBox({Key? key, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
      ),
    );
  }
}
