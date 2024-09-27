import 'package:flutter/material.dart';

class CommonScreen extends StatelessWidget {
  final Widget? childWidget;

  const CommonScreen({super.key, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: childWidget,
        ),
      ),
    );
  }
}
