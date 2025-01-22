import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  // Initialize Golden Toolkit and load fonts
  setUpAll(() async {
    await loadAppFonts();
  });

// Triggering failure intentionally.
  group('Golden Tests - StarListCard with intentional color mismatch', () {
    testGoldens('renders incorrectly with mismatched colors', (tester) async {
      final widgetUnderTest = MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(),
        ),
        home: const Scaffold(
          body: _MismatchedStarListCard(),
        ),
      );

      await tester.pumpWidgetBuilder(
        widgetUnderTest,
        // Define surface size.
        surfaceSize: const Size(400, 300),
      );

      // Verify the golden file
      await screenMatchesGolden(
        tester,
        'star_list_card_mismatch',
      );
    });
  });
}

// Intentional mismatches to test failures.
class _MismatchedStarListCard extends StatelessWidget {
  const _MismatchedStarListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star List View'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4,
            child: const ListTile(
              title: Text('Card with Outlined Star'),
              trailing: Icon(
                Icons.star_border,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4,
            child: const ListTile(
              title: Text('Card with Filled Star'),
              leading: Icon(
                Icons.star,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
