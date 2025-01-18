import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:golden_test_demo/star_list_card.dart';

void main() {
  // Initialize Golden Toolkit and load fonts
  setUpAll(() async {
    await loadAppFonts();
  });

  group('Golden Tests - StarListCard', () {
    testGoldens('renders correctly with Google Fonts', (tester) async {
      // Applies Google Fonts to the app
      final widgetUnderTest = MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(),
        ),
        home: const Scaffold(
          body: StarListCard(),
        ),
      );

      // Use GoldenToolkit to pump the widget with consistent size.
      await tester.pumpWidgetBuilder(
        widgetUnderTest,
        // Define surface size.
        surfaceSize: const Size(400, 300),
      );

      // Verify the golden file
      await screenMatchesGolden(
        tester,
        'star_list_card',
        autoHeight: true,
      );
    });
  });
}
