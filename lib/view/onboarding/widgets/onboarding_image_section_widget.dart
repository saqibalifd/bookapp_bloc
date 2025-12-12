import 'package:flutter/material.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';

class OnboardingImageSection extends StatelessWidget {
  final String image;
  final ThemeData theme;

  const OnboardingImageSection({
    super.key,
    required this.image,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: context.mediaQueryHeight * 0.4,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
