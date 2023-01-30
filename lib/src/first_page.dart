import 'package:flutter/material.dart';
import 'package:overlay_all_app/src/next_page.dart';
import 'package:overlay_all_app/src/overlay_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create an instance of OverlayScreen
    final overlayScreen = OverlayScreen.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                // display the overlay
                overlayScreen.show();
              },
              child: const Text('Display Overlay'),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const NextPage(),
                  ),
                );
              },
              child: const Text('Go to next page'),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                // removed all overlays on the screen
                overlayScreen.closeAll();
              },
              child: const Text('Close Overlay'),
            ),
          ],
        ),
      ),
    );
  }
}
