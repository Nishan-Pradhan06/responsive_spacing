
import 'package:flutter/material.dart';
import '../core/responsive_spacing_v2.dart';

class ResponsiveSpacingProvider extends StatefulWidget {
  final Widget child;
  final double base;
  final double scale;

  const ResponsiveSpacingProvider({
    super.key,
    required this.child,
    this.base = 4.0,
    this.scale = 1.5,
  });

  @override
  State<ResponsiveSpacingProvider> createState() =>
      _ResponsiveSpacingProviderState();

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

class _InheritedResponsiveSpacing extends InheritedWidget {
  final ResponsiveSpacing spacing;

  const _InheritedResponsiveSpacing({
    required this.spacing,
    required super.child,
  });

  @override
  bool updateShouldNotify(_InheritedResponsiveSpacing oldWidget) {
    return spacing != oldWidget.spacing;
  }
}

// Extension for ease of use
extension SpacingExtension on BuildContext {
  ResponsiveSpacing get spacing => ResponsiveSpacingProvider.of(this);
}
