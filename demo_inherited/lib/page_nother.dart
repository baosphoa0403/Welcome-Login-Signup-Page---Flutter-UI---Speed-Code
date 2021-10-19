import 'package:demo_inherited/state_widget.dart';
import 'package:flutter/material.dart';

class PageAnother extends StatelessWidget {
  const PageAnother({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Another Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Center(
              child: Text(
            "welcom another page",
            style: TextStyle(fontSize: 20),
          )),
          buildColor(context, Colors.amber),
          buildColor(context, Colors.green),
          buildColor(context, Colors.red),
          buildColor(context, Colors.black),
          ElevatedButton(
              onPressed: () {
                increament(context);
              },
              child: const Text("Increase count")),
        ],
      ),
    );
  }

  ElevatedButton buildColor(BuildContext context, Color color) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () {
          StateInheritedWidget.of(context).setColor(color);
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          height: 100,
        ));
  }

  increament(BuildContext context) {
    StateInheritedWidget.of(context).increment();
    Navigator.pop(context);
  }
}
