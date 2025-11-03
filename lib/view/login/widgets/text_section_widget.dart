import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class TextSectionWidget extends StatelessWidget {
  const TextSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(loc.signIn, style: theme.textTheme.headlineLarge),
        10.height,
        Text(
          loc.discoverYourNextFavoriteRead,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
