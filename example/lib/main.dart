import 'package:flutter/material.dart';
import 'package:pm_core_button/pm_inx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PM Core Button Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PMCoreButton(
                text: 'Filled Button',
                onPressed: () {
                  print('Filled Button pressed');
                },
                isEnabled: true,
                textColor: Colors.white,
                fillColor: Colors.deepPurpleAccent[100],
                // Material 3 color
                radius: 20.0, // Example border radius
              ),
              const SizedBox(height: 20),
              PMCoreButton(
                text: 'Border Button',
                onPressed: () {
                  print('Border Button pressed');
                },
                isEnabled: true,
                borderColor: Colors.deepPurpleAccent[100],
                // Material 3 color
                borderWidth: 2.0,
                // Example border width
                radius: 20.0, // Example border radius
              ),
              const SizedBox(height: 20),
              PMCoreButton(
                text: 'Disabled Button',
                onPressed: () {
                  print('Disabled Button pressed');
                },
                isEnabled: false,
                // Disable the button
                fillColor: Colors.grey,
                // Example fill color for disabled state
                radius: 20.0, // Example border radius for disabled state
              ),
            ],
          ),
        ),
      ),
    );
  }
}
