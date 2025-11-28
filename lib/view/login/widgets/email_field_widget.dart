import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatelessWidget {
  final TextEditingController emailController ;
  const EmailFieldWidget({super.key,required this.emailController});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        hintText: loc.email,
        prefixIcon: Icon(AppIcons.email),
      ),
    );
  }
}
