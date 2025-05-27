import 'package:flutter/material.dart';

/// A widget that adds responsive padding around its [child]
/// based on the screen width.
///
/// Automatically switches between [smallScreenPadding] and
/// [largeScreenPadding] depending on the screen size threshold (600px).
class ResponsivePadding extends StatelessWidget {
  /// The widget to which the padding will be applied.
  final Widget child;

  /// Padding for screens narrower than 600 pixels.
  final double smallScreenPadding;

  /// Padding for screens 600 pixels wide or wider.
  final double largeScreenPadding;

  /// Creates a [ResponsivePadding] widget.
  ///
  /// - [child] is required.
  /// - [smallScreenPadding] defaults to `8.0`.
  /// - [largeScreenPadding] defaults to `16.0`.
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

/// A widget that adds responsive margin around its [child]
/// based on the screen width.
///
/// Automatically switches between [smallScreenMargin] and
/// [largeScreenMargin] depending on the screen size threshold (600px).
class ResponsiveMargin extends StatelessWidget {
  /// The widget to which the margin will be applied.
  final Widget child;

  /// Margin for screens narrower than 600 pixels.
  final double smallScreenMargin;

  /// Margin for screens 600 pixels wide or wider.
  final double largeScreenMargin;

  /// Creates a [ResponsiveMargin] widget.
  ///
  /// - [child] is required.
  /// - [smallScreenMargin] defaults to `8.0`.
  /// - [largeScreenMargin] defaults to `16.0`.
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
