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
            leftIcon: Icons.arrow_back,
            rightIcon: Icons.arrow_forward,
            iconColor: Colors.blue,
            iconSize: 20,
            textPadding: 10,
            buttonStyle: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.white),
              // Button background color
              padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
              // Button padding
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  // Button border radius
                  side: const BorderSide(
                      color: Colors.blue), // Button border color
                ),
              ),
              elevation: WidgetStateProperty.all(5),
              // Shadow depth (elevation)
              overlayColor: WidgetStateProperty.resolveWith<Color?>(
                (states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.blueAccent
                        .withOpacity(0.3); // Button effect on press
                  }
                  return null; // No overlay when not pressed
                },
              ),
              textStyle: WidgetStateProperty.all(const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors
                    .black38, // Default text color (can also be defined separately)
              )),
            )));
  }

  void _handleClick() {
    print('Button pressed');
  }
}
