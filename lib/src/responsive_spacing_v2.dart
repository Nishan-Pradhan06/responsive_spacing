import 'package:flutter/material.dart';

/// Responsive padding widget that adjusts padding based on screen size.
class ResponsivePadding extends StatelessWidget {
  final Widget child;
  final double smallScreenPadding;
  final double largeScreenPadding;

  const ResponsivePadding({
    super.key,
    required this.child,
    this.smallScreenPadding = 8.0,
    this.largeScreenPadding = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double padding =
        screenWidth < 600 ? smallScreenPadding : largeScreenPadding;

    return Padding(
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}

/// Responsive margin widget that adjusts margin based on screen size.
class ResponsiveMargin extends StatelessWidget {
  final Widget child;
  final double smallScreenMargin;
  final double largeScreenMargin;

  const ResponsiveMargin({
    super.key,
    required this.child,
    this.smallScreenMargin = 8.0,
    this.largeScreenMargin = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = screenWidth < 600 ? smallScreenMargin : largeScreenMargin;

    return Container(
      margin: EdgeInsets.all(margin),
      child: child,
    );
  }
}
