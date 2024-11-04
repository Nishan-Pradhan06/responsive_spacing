import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_spacing_v2/responsive_spacing_v2.dart';

void main() {
  group('ResponsivePadding', () {
    testWidgets('applies small screen padding when width is below threshold',
        (WidgetTester tester) async {
      // Set up a small screen environment
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(500, 800)), // Width < 600
            child: ResponsivePadding(
              smallScreenPadding: 8.0,
              largeScreenPadding: 16.0,
              child: Container(),
            ),
          ),
        ),
      );

      // Verify padding is 8.0
      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(paddingWidget.padding, const EdgeInsets.all(8.0));
    });

    testWidgets('applies large screen padding when width is above threshold',
        (WidgetTester tester) async {
      // Set up a large screen environment
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(800, 800)), // Width >= 600
            child: ResponsivePadding(
              smallScreenPadding: 8.0,
              largeScreenPadding: 16.0,
              child: Container(),
            ),
          ),
        ),
      );

      // Verify padding is 16.0
      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(paddingWidget.padding, const EdgeInsets.all(16.0));
    });
  });

  group('ResponsiveMargin', () {
    testWidgets('applies small screen margin when width is below threshold',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(500, 800)), // Width < 600
            child: ResponsiveMargin(
              smallScreenMargin: 8.0,
              largeScreenMargin: 16.0,
              child: Container(),
            ),
          ),
        ),
      );

      final containerWidget = tester.widget<Container>(find.byType(Container));
      expect(containerWidget.margin, const EdgeInsets.all(8.0));
    });

    testWidgets('applies large screen margin when width is above threshold',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(800, 800)), // Width >= 600
            child: ResponsiveMargin(
              smallScreenMargin: 8.0,
              largeScreenMargin: 16.0,
              child: Container(),
            ),
          ),
        ),
      );

      final containerWidget = tester.widget<Container>(find.byType(Container));
      expect(containerWidget.margin, const EdgeInsets.all(16.0));
    });
  });
}
