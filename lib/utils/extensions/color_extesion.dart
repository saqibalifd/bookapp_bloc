import 'dart:math';
import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  static Color pickRendomColor() {
    final random = Random();

    const targetBrightness = 0.299 * 255 + 0.587 * 114 + 0.114 * 114;

    Color color;
    double brightness;

    do {
      int r = random.nextInt(256);
      int g = random.nextInt(256);
      int b = random.nextInt(256);

      brightness = 0.299 * r + 0.587 * g + 0.114 * b;
      color = Color.fromARGB(255, r, g, b);
    } while ((brightness - targetBrightness).abs() >
        10); // Allow some threshold

    return color;
  }
}
