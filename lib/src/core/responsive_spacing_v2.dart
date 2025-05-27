import 'package:flutter/material.dart';

/// A utility class that defines a scale of responsive spacing values.
///
/// This class provides five common spacing sizes: `xs`, `sm`, `md`, `lg`, and `xl`,
/// which scale exponentially based on a base value and a scale factor.
///
/// This is useful for consistent spacing throughout an app that adapts to screen size
/// or design requirements.
///
/// Example:
/// ```dart
/// final spacing = ResponsiveSpacing(context, base: 4.0, scale: 1.5);
/// print(spacing.md); // 9.0 if base=4.0 and scale=1.5
/// ```
class ResponsiveSpacing {
  /// Extra small spacing value.
  final double xs;

  /// Small spacing value.
  final double sm;

  /// Medium spacing value.
  final double md;

  /// Large spacing value.
  final double lg;

  /// Extra large spacing value.
  final double xl;

  /// Private named constructor.
  const ResponsiveSpacing._({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });

  /// Factory constructor that builds a responsive spacing scale.
  ///
  /// [base] is the smallest unit (default is `4.0`), and [scale] is the multiplier used
  /// to generate larger units (default is `1.5`).
  ///
  /// The sizes are calculated as:
  /// - `xs = base`
  /// - `sm = base * scale`
  /// - `md = base * scale²`
  /// - `lg = base * scale³`
  /// - `xl = base * scale⁴`
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
