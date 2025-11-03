import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/signup/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.mediaQueryHeight * .03,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.height,
                TextSectionWidget(),

                40.height,
                NameFieldWidget(),
                5.height,
                EmailFieldWidget(),
                5.height,

                PasswordFieldWidget(),

                50.height,
                SignupButtonWidget(),
                40.height,
                OrTextWidget(),
                40.height,
                GoogleSignupButtonWidget(),
              ],
            ),
          ),
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterDecoration: BoxDecoration(color: Colors.transparent),
      persistentFooterButtons: [
        Padding(
          padding: EdgeInsets.only(bottom: context.mediaQueryHeight * .03),
          child: Text(
            loc.alreadyHaveAnAccount,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: context.mediaQueryHeight * .03),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              loc.signIn,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
