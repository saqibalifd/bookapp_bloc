import 'package:bookapp/config/component/main_button_component.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/data/response/status.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/flashbar_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login/login_bloc.dart';

class LoginButtonWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const LoginButtonWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return BlocConsumer<LoginBloc, LoginStates>(
      listenWhen: (current, previous) =>
          current.loginApi.status != previous.loginApi.status,
      listener: (context, state) {
        if (state.loginApi.status == Status.error) {
          context.flushBarErrorMessage(
            message: state.loginApi.message.toString(),
          );
        }

        if (state.loginApi.status == Status.completed) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesName.home,
            (route) => false,
          );
        }
      },
      builder: (context, state) {
        return MainButtonComponent(
          isLoading: state.loginApi.status == Status.loading ? true : false,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              context.read<LoginBloc>().add(const LoginApi());
            }
          },
          name: loc.signIn,
        );
      },
    );
  }
}
