import 'package:flutter/material.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';

class OnboardingIndicator extends StatelessWidget {
  final int currentIndex;
  final int total;
  final ThemeData theme;

  const OnboardingIndicator({
    super.key,
    required this.currentIndex,
    required this.total,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(
            horizontal: context.mediaQueryWidth * .004,
          ),
          height: context.mediaQueryHeight * 0.01,
          width: currentIndex == index
              ? context.mediaQueryWidth * .07
              : context.mediaQueryWidth * .04,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? theme.colorScheme.primary
                : theme.colorScheme.primary.withValues(alpha: .3),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
