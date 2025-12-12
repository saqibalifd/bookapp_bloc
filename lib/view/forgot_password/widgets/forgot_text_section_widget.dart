import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class ForgotTextSectionWidget extends StatelessWidget {
  const ForgotTextSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(loc.forgotPassword, style: theme.textTheme.headlineLarge),
        10.height,
        Text(loc.forgotYourPasswordResetIt, style: theme.textTheme.bodyLarge),
      ],
    );
  }
}
