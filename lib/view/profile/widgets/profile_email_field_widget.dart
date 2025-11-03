import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class ProfileEmailFieldWidget extends StatelessWidget {
  const ProfileEmailFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          loc.email,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        5.height,
        TextFormField(
          readOnly: true,

          decoration: InputDecoration(
            hintText: loc.email,
            hintStyle: theme.textTheme.bodyMedium,
            fillColor: theme.colorScheme.outline.withValues(alpha: .2),
            filled: true,
          ),
        ),
      ],
    );
  }
}
