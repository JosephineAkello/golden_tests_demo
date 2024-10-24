import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'package:golden_test_demo/main.dart';

void main() {
  testGoldens('HomePageButton has correct background color', (tester) async {
    await tester.pumpWidgetBuilder(
      const MaterialApp(
        home: Scaffold(
          body: HomePageButton(),
        ),
      ),
      surfaceSize: const Size(400, 400), // Set the size of the surface
    );

    // Verify the rendered widget matches the golden image
    await screenMatchesGolden(tester, 'home_page_button_color_test');
  });
}
