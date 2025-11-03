import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatelessWidget {
  const EmailFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return TextFormField(
      decoration: InputDecoration(
        hintText: loc.email,
        prefixIcon: Icon(AppIcons.email),
      ),
    );
  }
}
