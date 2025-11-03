import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class GoogleButtonComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double? minWidth;
  final Color? color;
  const GoogleButtonComponent({
    super.key,
    required this.onPressed,
    required this.name,
    this.minWidth,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialButton(
      minWidth: minWidth ?? context.mediaQueryWidth * 1,
      onPressed: onPressed,
      color: color ?? theme.colorScheme.surface,
      elevation: 6,
      highlightElevation: 10,
      splashColor: theme.colorScheme.surface.withValues(alpha: .2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: theme.colorScheme.outline, width: .3),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: context.mediaQueryWidth * .08,
        vertical: context.mediaQueryHeight * .02,
      ),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.googleIcon),
          SizedBox(width: context.mediaQueryWidth * .1),
          Text(
            name,

            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
