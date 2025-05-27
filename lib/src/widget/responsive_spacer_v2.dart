import 'package:flutter/material.dart';
import 'package:responsive_spacing_v2/src/provider/responsive_spacing_provider_v2.dart';

/// A widget that adds responsive spacing between widgets based on a size key.
///
/// Accepts size keys like `'xs'`, `'sm'`, `'md'`, `'lg'`, `'xl'`, which
/// are mapped to spacing values from the [ResponsiveSpacingProvider].
/// You can also specify the axis — vertical or horizontal.
///
/// Example:
/// ```dart
/// ResponsiveSpacer(size: 'md'),
/// ```
///
/// This will insert a vertical space with a size corresponding to `'md'`.
class ResponsiveSpacer extends StatelessWidget {
  /// A size keyword string: `'xs'`, `'sm'`, `'md'`, `'lg'`, or `'xl'`.
  ///
  /// Defaults to `'md'` if the provided value doesn't match any key.
  final String size;

  /// The axis along which the space will be applied.
  ///
  /// Defaults to [Axis.vertical].
  final Axis axis;

  /// Creates a [ResponsiveSpacer] widget.
  ///
  /// - [size] must be a valid spacing keyword.
  /// - [axis] defaults to vertical spacing.
  const ResponsiveSpacer({
    super.key,
    required this.size,
    this.axis = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;

    final value = {
          'xs': spacing.xs,
          'sm': spacing.sm,
          'md': spacing.md,
          'lg': spacing.lg,
          'xl': spacing.xl,
        }[size] ??
        spacing.md;

    return axis == Axis.vertical
        ? SizedBox(height: value)
        : SizedBox(width: value);
  }
}
