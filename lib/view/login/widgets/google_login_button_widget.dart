import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/services/storage/local_storage.dart';
import 'package:flutter/material.dart';

class GoogleLoginButtonWidget extends StatelessWidget {
  const GoogleLoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return GoogleButtonComponent(
      onPressed: ()async {
        final storage = LocalStorage();
    final token = await storage.readValue('token');
    print('heheheheheheheheh$token');
      },
      name: loc.signInWithGoogle,
    );
  }
}
