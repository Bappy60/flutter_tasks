import 'package:flutter/material.dart';

class CommonScreen extends StatelessWidget {
  final Widget? childWidget;

  const CommonScreen({super.key, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: childWidget,
          ),
        ),
      ),
    );
  }
}
