import 'package:flutter/material.dart';
import 'package:responsive_spacing_v2/responsive_spacing_v2.dart';

void main() {
  runApp(
    const ResponsiveSpacingProvider(
      base: 8.0,
      scale: 1.5,
      child: MyApp(),
    ),
  );
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

            /// ResponsiveSpacer
            const ResponsiveSpacer(size: 'sm'),
            const ResponsiveSpacer(size: 'lg'),

            /// context.spacing
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: context.spacing.sm,
                horizontal: context.spacing.lg,
              ),
              child: const Text(
                'This padding uses the responsive spacing scale',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
