import 'package:flutter/material.dart';
import 'package:standard_app/blue_box.dart';

class ListIcon extends StatelessWidget {
  const ListIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // crossAxisAlignment: CrossAxisAlignment., //stretch: kéo dài
      children: const <Widget>[
        BlueBox(
          color: Colors.amber,
        ),
        BlueBox(
          color: Colors.blueGrey,
        ),
        BlueBox(
          color: Colors.cyan,
        ),
      ],
    );
    ;
  }
}
