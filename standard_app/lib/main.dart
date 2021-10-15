import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:standard_app/blue_box.dart';
import 'package:standard_app/list_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Column(children: <Widget>[
        Expanded(
          flex: 6, // 60% of space => (6/(6 + 4))
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 4, // 40% of space
          child: Container(
            color: Colors.purple,
          ),
        ),
        Expanded(
          flex: 4, // 40% of space
          child: Container(
            color: Colors.amber,
          ),
        )
      ]),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Widget child;
  const MyHomePage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // backgroundColor: const Color.fromRGBO(99, 22, 33, 0.5),
      // appBar: AppBar(),
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const BlueBox(
            color: Colors.amber,
          ),
          const BlueBox(
            color: Colors.blueGrey,
          ),
          const BlueBox(
            color: Colors.cyan,
          ),
          // child,
          Row(children: <Widget>[
            Expanded(
              flex: 6, // 60% of space => (6/(6 + 4))
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 4, // 40% of space
              child: Container(
                color: Colors.purple,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
