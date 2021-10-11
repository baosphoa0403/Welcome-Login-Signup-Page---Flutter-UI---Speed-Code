import 'package:flutter/material.dart';
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
      home: const MyHomePage(
        child: ListIcon(),
      ),
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
    return Scaffold(body: child
        // Column(
        //   // mainAxisAlignment: MainAxisAlignment.end,
        //   // crossAxisAlignment: CrossAxisAlignment.end, ?? chỗ này
        //   children: const <Widget>[
        //     BlueBox(
        //       color: Colors.amber,
        //     ),
        //     BlueBox(
        //       color: Colors.blueGrey,
        //     ),
        //     BlueBox(
        //       color: Colors.cyan,
        //     ),
        //     child,
        //   ],

        // ),
        );
  }
}
