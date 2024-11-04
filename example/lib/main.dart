import 'package:flutter/material.dart';
import 'package:responsive_spacing/responsive_spacing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Responsive Spacing Example"),
        ),
        body: Column(
          children: [
            ResponsivePadding(
              smallScreenPadding: 8.0,
              largeScreenPadding: 16.0,
              child: Container(
                color: Colors.blue,
                child: const Text("This text has responsive padding"),
              ),
            ),
            ResponsiveMargin(
              smallScreenMargin: 8.0,
              largeScreenMargin: 16.0,
              child: ElevatedButton(
                onPressed: () {
                  // Button action
                },
                child: const Text("Button with responsive margin"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Button action
              },
              child: const Text("Button without responsive margin"),
            ),
          ],
        ),
      ),
    );
  }
}
