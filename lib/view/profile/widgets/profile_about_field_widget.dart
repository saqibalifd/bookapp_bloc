import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAboutFieldWidget extends StatelessWidget {
  const ProfileAboutFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              loc.about,
              style: theme.textTheme.titleSmall!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            SvgPicture.asset(AppIcons.penIcon),
          ],
        ),
        5.height,
        TextField(
          minLines: 1,
          maxLines: null,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: loc.about,
            hintStyle: theme.textTheme.bodyMedium,
            fillColor: theme.colorScheme.outline.withValues(alpha: .2),
            filled: true,
          ),
        ),
      ],
    );
  }
}
