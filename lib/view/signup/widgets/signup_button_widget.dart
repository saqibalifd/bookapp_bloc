import 'package:bookapp/bloc/signup/signup_bloc.dart';
import 'package:bookapp/config/component/main_button_component.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/data/response/status.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/flashbar_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupButtonWidget extends StatelessWidget {
   final GlobalKey<FormState> formKey;
  const SignupButtonWidget({super.key,required this.formKey});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return BlocConsumer<SignupBloc, SignupState>(
      listenWhen: (current, previous) =>
          current.signupApi.status != previous.signupApi.status,
      listener: (context, state) {
        if (state.signupApi.status == Status.error) {
          context.flushBarErrorMessage(
            message: state.signupApi.message.toString(),
          );
        }

        if (state.signupApi.status == Status.completed) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesName.home,
            (route) => false,
          );
        }
      },
      builder: (context, state) {
        return MainButtonComponent(
          isLoading: state.signupApi.status == Status.loading ? true : false,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              context.read<SignupBloc>().add(const SignupApi());
            }
          },
          name: loc.signUp,
        );
      },
    );
  }
}
