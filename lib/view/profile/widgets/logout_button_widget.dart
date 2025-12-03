import 'package:bookapp/bloc/logout/logout_bloc.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/flashbar_extension.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context)!;
    return BlocConsumer<LogoutBloc, LogoutState>(
      listener: (context, state) {
        if (state is LogoutErrorState) {
          context.flushBarErrorMessage(message: 'Something went wrong');
        }

        if (state is LogoutSuccessState) {
          Navigator.pushReplacementNamed(context, RoutesName.login);
        }
      },

      builder: (context, state) {
        return GestureDetector(
          onTap: state is LogoutLoadingState
              ? null
              : () {
                  context.read<LogoutBloc>().add(Logout());
                },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(AppIcons.logout, color: theme.colorScheme.error),
              // loading lagany wli rhti
              10.width,
              Text(
                loc.logout,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.colorScheme.error,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
