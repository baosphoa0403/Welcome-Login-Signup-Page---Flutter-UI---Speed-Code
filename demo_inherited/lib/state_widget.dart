import 'package:demo_inherited/model/core_sate.dart';
import 'package:flutter/material.dart';

class StateWidget extends StatefulWidget {
  const StateWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  _StateWidgetState createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  CoreState state = CoreState();
  void increment() {
    final counter = state.counter + 1; // lấy counter ra tăng lên
    final newState = state.copy(counter: counter); // update lại object mới
    setState(() {
      state =
          newState; // sau đó gán lại thì nó sẽ thấy sự thay đổi để update lại layout
    });
  }

  void setColor(Color colorSelect) {
    final newState = state.copy(backgroundColor: colorSelect);
    setState(() {
      state = newState;
    });
  }

  @override
  Widget build(BuildContext context) => StateInheritedWidget(
        child: widget.child,
        state: state,
        stateWidget: this,
      );
}

class StateInheritedWidget extends InheritedWidget {
  final CoreState state;
  final _StateWidgetState stateWidget;
  const StateInheritedWidget({
    Key? key,
    required this.state,
    required Widget child,
    required this.stateWidget,
  }) : super(key: key, child: child);

  static _StateWidgetState of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<StateInheritedWidget>()!
      .stateWidget;
  @override
  bool updateShouldNotify(StateInheritedWidget oldWidget) {
    return oldWidget.state != state;
  }
}
