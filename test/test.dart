// import 'package:flutter/material.dart';
// import '../core/responsive_spacing_v2.dart';

// class ResponsiveSpacingProvider extends InheritedWidget {
//   final ResponsiveSpacing spacing;

//   ResponsiveSpacingProvider({
//     super.key,
//     required super.child,
//     double base = 4.0,
//     double scale = 1.5,
//     required BuildContext context,
//   })  : spacing = ResponsiveSpacing(context, base: base, scale: scale);

//   static ResponsiveSpacing of(BuildContext context) {
//     final provider =
//         context.dependOnInheritedWidgetOfExactType<ResponsiveSpacingProvider>();
//     assert(provider != null, 'ResponsiveSpacingProvider not found in context');
//     return provider!.spacing;
//   }

//   @override
//   bool updateShouldNotify(ResponsiveSpacingProvider oldWidget) {
//     return spacing != oldWidget.spacing;
//   }
// }

// extension SpacingExtension on BuildContext {
//   ResponsiveSpacing get spacing => ResponsiveSpacingProvider.of(this);
// }
