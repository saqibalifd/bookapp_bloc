import 'package:flutter/material.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';

class OnboardingTextWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final ThemeData theme;

  const OnboardingTextWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        20.height,
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
        ),
        50.height,
      ],
    );
  }
}
