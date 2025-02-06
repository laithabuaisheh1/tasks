import 'package:flutter/material.dart';
// home screen ...

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7();
}

class _Task7 extends State<Task7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Home Screen")),
    );
  }
}
