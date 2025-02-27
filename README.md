# Responsive Spacing

A simple Flutter package to add responsive padding and margin widgets for consistent, adaptive spacing across different screen sizes. This package is especially helpful for creating layouts that need flexible padding and margin based on screen width, ideal for responsive design.

## Features

- **ResponsivePadding**: Adds adjustable padding around a widget based on screen size.
- **ResponsiveMargin**: Adds adjustable margin around a widget based on screen size.
- Customizable padding and margin values for both small and large screens.

## Installation

To include the **Responsive Spacing** package in your Flutter project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  responsive_spacing: ^1.1.2
```
## Example Usage

```
import 'package:responsive_spacing_v2/responsive_spacing_v2.dart';
```
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
