import 'package:blucash_agent/Courses/retour.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

String _name = "Morel";

void _changeName() {
  setState(() {
    _name = "Denzel";
  });
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(_name),
            TextButton(
              onPressed: () {
                _changeName();
              },
              child: Text("Click Me"),
            )
          ],
        ),
      ),
    );
  }
}
