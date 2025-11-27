import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class MainButtonComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double? minWidth;
  final Color? color;
  final double? textSize;
  final Color? textColor;
  final bool isLoading;
  const MainButtonComponent({
    super.key,
    required this.onPressed,
    required this.name,
    this.minWidth,
    this.textColor,
    this.color,
    this.textSize,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialButton(
      minWidth: minWidth ?? context.mediaQueryWidth * 1,
      onPressed: isLoading ? null : onPressed,
      color: color ?? theme.colorScheme.primary,
      elevation: 6,
      highlightElevation: 10,
      splashColor: theme.colorScheme.surface.withValues(alpha: .2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(
        horizontal: context.mediaQueryWidth * .08,
        vertical: context.mediaQueryHeight * .02,
      ),
      child: isLoading
          ? LoadingWidget()
          : Text(
              name,
              style: textSize == null
                  ? theme.textTheme.titleSmall
                  : theme.textTheme.titleSmall!.copyWith(
                      fontSize: textSize,
                      color: textColor,
                    ),
            ),
    );
  }
}
