import 'package:flutter/material.dart';

class ResponsiveSpacing {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;

  ResponsiveSpacing._({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });

  factory ResponsiveSpacing(
    BuildContext context, {
    double base = 4.0,
    double scale = 1.5,
  }) {
    return ResponsiveSpacing._(
      xs: base,
      sm: base * scale,
      md: base * scale * scale,
      lg: base * scale * scale * scale,
      xl: base * scale * scale * scale * scale,
    );
  }
}
