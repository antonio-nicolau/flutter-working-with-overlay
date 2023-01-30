import 'package:flutter/material.dart';
import 'package:overlay_all_app/src/home_page.dart';
import 'package:overlay_all_app/src/overlay_screen.dart';

OverlayScreen? overlayScreen;

void main() {
  runApp(
    MaterialApp(
      home: const HomePage(),
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) {
                overlayScreen = OverlayScreen.of(context);
                print('calling');
                return child ?? const SizedBox();
              },
            ),
          ],
        );
      },
    ),
  );
}
