import 'package:bookapp/config/component/main_button_component.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class ForgotButtonWidget extends StatelessWidget {
  const ForgotButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return MainButtonComponent(
      onPressed: () {
        Navigator.pop(context);
      },
      name: loc.forgot,
    );
  }
}
