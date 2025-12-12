import 'package:flutter/material.dart';

class ProfileAppbarWidget extends StatelessWidget {
  const ProfileAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    // final loc = AppLocalizations.of(context)!;
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      forceMaterialTransparency: true,
      // actions: [
      //   TextButton(
      //     onPressed: () {},
      //     child: Text(
      //       loc.save,
      //       style: theme.textTheme.titleSmall!.copyWith(
      //         color: theme.colorScheme.primary,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ],
    );
  }
}
