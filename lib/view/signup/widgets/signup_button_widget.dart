import 'package:bookapp/config/component/main_button_component.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SignupButtonWidget extends StatelessWidget {
  const SignupButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return MainButtonComponent(
      onPressed: () {
        Navigator.pushNamed(context, RoutesName.home);
      },
      name: loc.signUp,
    );
  }
}
