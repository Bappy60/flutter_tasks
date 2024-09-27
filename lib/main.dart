import 'package:flutter/material.dart';
import 'components/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: CustomButton(
          text: 'Click Me',
          onPressed: _handleClick,
          fontSize: 16,
          textColor: Colors.black38,
          shouldOverflow: true,
          // leftIcon: Icons.arrow_back,
          rightIcon: Icons.arrow_forward,
          iconColor: Colors.blue,
          iconSize: 20,
          textPadding: 10,
        ));
  }

  void _handleClick(){
    print('Button pressed');
  }
}
