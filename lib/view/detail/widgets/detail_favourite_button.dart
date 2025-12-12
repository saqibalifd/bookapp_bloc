import 'package:bookapp/config/component/main_button_component.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class DetailFavouriteButton extends StatelessWidget {
  const DetailFavouriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return MainButtonComponent(
      onPressed: () {},
      color: theme.colorScheme.onSurface,
      name: loc.addToFavourite,
      minWidth: context.mediaQueryWidth * .001,
      textSize: 12,
      textColor: theme.colorScheme.surface,
    );
  }
}
