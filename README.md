# Responsive Spacing

A simple Flutter package to add responsive padding and margin widgets for consistent, adaptive spacing across different screen sizes.

## Features

- **ResponsivePadding**: Adds adjustable padding around a widget based on screen size.
- **ResponsiveMargin**: Adds adjustable margin around a widget based on screen size.
- **ResponsiveSpacingProvider**: Provides a spacing scale (xs, sm, md, lg, xl) based on screen size.
- **ResponsiveSpacer**: Adds vertical or horizontal space using the spacing scale.
- **context.spacing**: Access the spacing values directly from BuildContext.
- Fully customizable spacing system with base unit and scale factor..

## Installation

To include the **Responsive Spacing** package in your Flutter project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  responsive_spacing_v2: ^latest
```

## Example Usage

```
import 'package:responsive_spacing_v2/responsive_spacing_v2.dart';
```

## ✅ Getting Started

Wrap your app with `ResponsiveSpacingProvider` in `main.dart`:

```dart
void main() {
  runApp(
    ResponsiveSpacingProvider(
      base: 8.0,  // Base spacing unit
      scale: 1.5, // Scale factor for spacing levels
      child: MyApp(),
    ),
  );
}
```

## ✅ResponsivePadding

The `ResponsivePadding` widget allows you to add responsive padding around any child widget based on the screen size. Below is an example of how to use it:

```dart
ResponsivePadding(
  smallScreenPadding: 8.0, // Padding for screens smaller than 600px
  largeScreenPadding: 16.0, // Padding for screens 600px and larger
  child: Container(
    color: Colors.blue,
    child: Text(
      "This text has responsive padding",
      style: TextStyle(color: Colors.white),
    ),
  ),
);
```

## ✅ResponsiveMargin

The `ResponsiveMargin` widget allows you to add responsive margin around any child widget. Here’s an example:

```dart
ResponsiveMargin(
  smallScreenMargin: 8.0, // Margin for screens smaller than 600px
  largeScreenMargin: 16.0, // Margin for screens 600px and larger
  child: ElevatedButton(
    onPressed: () {
      // Button action
      print("Button pressed!");
    },
    child: Text("Button with responsive margin"),
  ),
);
```

## ✅ResponsiveSpacer

The `ResponsiveSpacer` widget inserts vertical or horizontal space using the spacing scale.

```dart
const ResponsiveSpacer(size: 'md'); // Adds vertical spacing of base * scale^2

const ResponsiveSpacer(size: 'lg', axis: Axis.horizontal); // Horizontal spacing

```

## ✅Access Spacing via context.spacing

You can access spacing values directly from the context using predefined sizes:

```dart
Padding(
  padding: EdgeInsets.symmetric(
    vertical: context.spacing.sm, // base * scale
    horizontal: context.spacing.lg, // base * scale^3
  ),
  child: Text("Padding using context.spacing"),
);

```
