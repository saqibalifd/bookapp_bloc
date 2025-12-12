import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

class FloatingColorComponent extends StatelessWidget {
  final Widget? child;
  const FloatingColorComponent({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimateGradient(
      primaryBeginGeometry: const AlignmentDirectional(0, 1),
      primaryEndGeometry: const AlignmentDirectional(0, 2),
      secondaryBeginGeometry: const AlignmentDirectional(2, 0),
      secondaryEndGeometry: const AlignmentDirectional(0, -0.8),
      textDirectionForGeometry: TextDirection.rtl,
      primaryColors: [
        theme.colorScheme.inversePrimary,
        theme.colorScheme.inverseSurface,
        theme.colorScheme.onInverseSurface,
        theme.colorScheme.tertiary,
      ],
      secondaryColors: [
        theme.colorScheme.inversePrimary,
        theme.colorScheme.inverseSurface,
        theme.colorScheme.onInverseSurface,
        theme.colorScheme.tertiary,
      ],
      child: child,
    );
  }
}
