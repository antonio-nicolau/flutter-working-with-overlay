import 'package:flutter/material.dart';
import 'package:overlay_all_app/src/home_page.dart';
import 'package:overlay_all_app/src/overlay_screen.dart';

// Need to have it global to be able to access it everywhere
OverlayScreen? overlayScreen;

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) {
                // Create an instance of [OverlayScreen]
                overlayScreen = OverlayScreen.of(context);
                return child ?? const SizedBox();
              },
            ),
          ],
        );
      },
    );
  }
}
