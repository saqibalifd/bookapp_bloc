import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class HomeSearchFieldWidget extends StatelessWidget {
  const HomeSearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(AppIcons.search),
        hintText: loc.search,

        fillColor: theme.colorScheme.outline.withValues(alpha: .3),
        filled: true,
      ),
    );
  }
}
