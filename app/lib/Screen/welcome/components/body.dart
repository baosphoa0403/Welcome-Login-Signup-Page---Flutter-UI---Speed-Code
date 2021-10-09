import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // get dc info size
    print(size);
    return Container(
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            // descendant(con cháu của)  stack
            child: Image.asset("assets/images/main_top.png"),
            width: size.width * 0.3,
          )
        ],
      ),
    );
  }
}
