import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset("assets/images/signup_top.png"),
            top: 0,
            left: 0,
            width: size.width * 0.35,
          ),
          Positioned(
            child: Image.asset("assets/images/main_bottom.png"),
            bottom: 0,
            left: 0,
            width: size.width * 0.35,
          ),
          child
        ],
      ),
    );
  }
}
