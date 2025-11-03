import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  const GoogleSignupButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return GoogleButtonComponent(
      onPressed: () {
        Navigator.pushNamed(context, RoutesName.home);
      },
      name: loc.signUpWithGoogle,
    );
  }
}
