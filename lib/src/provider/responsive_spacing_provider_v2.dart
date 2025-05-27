import 'package:flutter/material.dart';
import '../core/responsive_spacing_v2.dart';

/// Provides responsive spacing values (e.g., xs, sm, md, lg, xl)
/// to descendant widgets using an inherited context.
///
/// You can customize the base unit and scale factor for spacing.
///
/// Example usage:
/// ```dart
/// ResponsiveSpacingProvider(
///   base: 8.0,
///   scale: 1.5,
///   child: MyApp(),
/// );
/// ```
///
/// Access spacing values via:
/// ```dart
/// context.spacing.md
/// ```
class ResponsiveSpacingProvider extends StatefulWidget {
  /// The widget subtree that will have access to the spacing values.
  final Widget child;

  /// The base unit for spacing. Default is `4.0`.
  final double base;

  /// The scale multiplier for spacing values. Default is `1.5`.
  final double scale;

  /// Creates a [ResponsiveSpacingProvider].
  ///
  /// [child] is required. Optional parameters [base] and [scale] define
  /// how spacing values are calculated.
  const ResponsiveSpacingProvider({
    super.key,
    required this.child,
    this.base = 4.0,
    this.scale = 1.5,
  });

  @override
  State<ResponsiveSpacingProvider> createState() =>
      _ResponsiveSpacingProviderState();

  /// Retrieves the [ResponsiveSpacing] from the closest ancestor.
  ///
  /// Throws an assertion error if no [ResponsiveSpacingProvider] is found.
  static ResponsiveSpacing of(BuildContext context) {
    final inherited = context
        .dependOnInheritedWidgetOfExactType<_InheritedResponsiveSpacing>();
    assert(inherited != null, 'ResponsiveSpacingProvider not found in context');
    return inherited!.spacing;
  }
}

class _ResponsiveSpacingProviderState extends State<ResponsiveSpacingProvider> {
  late ResponsiveSpacing spacing;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    spacing = ResponsiveSpacing(
      context,
      base: widget.base,
      scale: widget.scale,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedResponsiveSpacing(
      spacing: spacing,
      child: widget.child,
    );
  }
}

/// An inherited widget that holds the [ResponsiveSpacing] object.
class _InheritedResponsiveSpacing extends InheritedWidget {
  /// The current responsive spacing configuration.
  final ResponsiveSpacing spacing;

  /// Creates an [_InheritedResponsiveSpacing].
  const _InheritedResponsiveSpacing({
    required this.spacing,
    required super.child,
  });

  @override
  bool updateShouldNotify(_InheritedResponsiveSpacing oldWidget) {
    return spacing != oldWidget.spacing;
  }
}

/// Extension on [BuildContext] to access [ResponsiveSpacing] easily.
///
/// Example:
/// ```dart
/// double padding = context.spacing.md;
/// ```
extension SpacingExtension on BuildContext {
  /// Shortcut to get [ResponsiveSpacing] from context.
  ResponsiveSpacing get spacing => ResponsiveSpacingProvider.of(this);
}
