import 'package:flutter/material.dart';
import 'package:responsive_spacing_v2/src/provider/responsive_spacing_provider_v2.dart';

class ResponsiveSpacer extends StatelessWidget {
  final String size; // 'xs', 'sm', 'md', 'lg', 'xl'
  final Axis axis;

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
