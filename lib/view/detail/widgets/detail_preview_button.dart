import 'package:bookapp/config/component/main_button_component.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class DetailPreviewButton extends StatelessWidget {
  const DetailPreviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return MainButtonComponent(
      onPressed: () {
        Navigator.pushNamed(context, RoutesName.preview);
      },
      name: loc.readPreviews,
      minWidth: context.mediaQueryWidth * .01,
      textSize: 12,
    );
  }
}
