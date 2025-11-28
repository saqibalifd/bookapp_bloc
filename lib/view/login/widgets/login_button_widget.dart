import 'package:bookapp/bloc/login/login_bloc.dart';
import 'package:bookapp/config/component/loading_widget.dart';
import 'package:bookapp/config/component/main_button_component.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/flashbar_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonWidget extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginButtonWidget({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginError) {
          context.flushBarErrorMessage(message: state.message);
        }

        if (state is LoginSuccess) {
          context.flushBarSuccessMessage(message: "Login Successful");
         Navigator.pushNamedAndRemoveUntil(context, RoutesName.home, (route) => false,);
        }
      },

      builder: (context, state) {
     
        if (state is LoginLoading) {
          return const LoadingWidget();
        }


        return MainButtonComponent(
          name: loc.signIn,
          onPressed: () {
            context.read<LoginBloc>().add(
                  LoginButtonPressed(
                    emailController.text.trim(),
                    passwordController.text.trim(),
                  ),
                );
          },
        );
      },
    );
  }
}
